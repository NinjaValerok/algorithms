def solution(a)
  steps = []
  jump(a, 0, steps)
end

def jump(a, jump_index, steps)
  cycle_size = search(steps, jump_index)
  if cycle_size != -1
    return cycle_size
  else
    steps.push(jump_index)
    jump(a, a[jump_index], steps)
  end
end


def search(steps, jump_index)
  ri = steps.rindex(jump_index)
  i = steps.index(jump_index)
  if i && i != ri
    #Если такой индекс встречался дважды
    return ri - i if steps[(i+1)...ri] ==
    steps[(ri+1)...steps.size]
  end
  -1
end