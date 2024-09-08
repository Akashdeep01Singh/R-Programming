#Quantifiers specify how many repetitions of the pattern.
#*: matches at least 0 times.
#+: matches at least 1 times.
#?: matches at most 1 times.
#{n}: matches exactly n times.
#{n,}: matches at least n times.
#{n,m}: matches between n and m times.

strings <- c("a", "ab", "acb", "accb", "acccb", "accccb")
strings
grep("ac*b", strings, value = TRUE)
grep("ac*b", strings)
grep("ac*b", strings, value = F)
grep("ac+b", strings, value = TRUE)
grep("ac?b", strings, value = TRUE)
grep("ac{2}b", strings, value = TRUE)
grep("ac{2,}b", strings, value = TRUE)
grep("ac{2,3}b", strings, value = TRUE)

