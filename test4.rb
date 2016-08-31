def solution(a)
  if a.size < 3
    return -1
  end
  a.sort!.reverse!
  i = 0
  while i < a.size - 2
    r = a[i]
    sum = a[i + 1] + a[i + 2]
    if sum > r
      return sum + r
    end
    i += 1
  end
  -1
end
