sequence = [4, 3, 5, 0, 1]
sequence2 = [3,6,2,8,11,1,0,14,13]
sequence3 = [5, 4, 3, 2, 1, 0]

def bubble_sort(sequence)

  swaps = 0
  index = 1
  iterations = 0
  previous = sequence[index - 1]
  current = sequence[index]


    while index < sequence.length
      previous = sequence[index - 1]
      current = sequence[index]
      if previous > current
        sequence[index] = previous
        sequence[index - 1] = current
        swaps += 1
        iterations += 1
        index = 1
        puts sequence.join
      else
        index += 1
        iterations += 1
      end
    end

    puts "Final result: #{sequence.join}"
    puts "Swaps: #{swaps}"
    puts "iterations: #{iterations}"


end


bubble_sort(sequence)
#bubble_sort(sequence2)
#bubble_sort(sequence3)
