def solution(s)
  even = s.size.even?
  h = {}
  s.chars.each do |c|
    h[c] ||= 0
    h[c] += 1
  end
  times_find_one = 0
  h.each do |_k, v|
    if v == 1 && !even
     times_find_one += 1
     return 0 if times_find_one > 1
    elsif v % 2 != 0
     return 0
    end
  end

  if (!even && times_find_one == 0) || (even && times_find_one != 0)
    return 0
  end
  1
end