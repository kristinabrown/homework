
sequence = [5, 4, 3, 2, 1, 0]

def bubble_sort(sequence)

  index = 1
  swaps = 0
  iterations = 0

  while index < sequence.length
    previous = sequence[index - 1]
    current = sequence[index]
    if previous > current
      sequence[index - 1] = current
      sequence[index] = previous
      swaps += 1
      index = 1
      iterations += 1
      puts sequence.join
    else
      index += 1
      iterations += 1
    end
  end

  puts swaps
  puts iterations

end

bubble_sort(sequence)
