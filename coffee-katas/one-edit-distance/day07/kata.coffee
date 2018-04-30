export default class OneEditDistance
  isOneEditDistance: (s, t) ->
    [m, n] = [s.length, t.length]
    if m > n then this.isOneEditDistance(t, s)
    else if n - m > 1 then false
    else
      i = 0
      shift = n - m
      i += 1 while i < m && s[i] == t[i]
      i += 1 if shift == 0
      i += 1 while i < m && s[i] == t[i + shift]
      i == m