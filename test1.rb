
def solution(s)
  return s if s.size == 1
  f(s, '', s.size, 0)
end


def f(string , result, origin_string_size, index)
  if index == origin_string_size - 1
    return result
  end
  index_c = string.index('C')
  index_a = string.index('A')
  if !index_c && !index_a
    return result + string
  else
    if !index_a
      return result + 'C'
    elsif !index_c
      return result + 'A'
    else
      if index_c < index_a
        result += 'C'
        f(string[index_a..-1], result, origin_string_size, index + index_a)
      else
        result += 'A'
        f(string[index_c..-1], result, origin_string_size, index + index_c)
      end
    end
  end
end
