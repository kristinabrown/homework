def fib_jag(quantity)
  first = 0
  second = 1
  elements = []
   quantity.times do
    elements.push(first)
    sum = first + second
    first = second
    second = sum
   end

  elements.each_slice(5) { |x| puts x.join(" ") }
 end

 #fib_jag(15)



 def fib_bet(quantity)
   first = 0
   second = 1
   elements = []
    quantity.times do
     elements.push(first)
     sum = first + second
     first = second
     second = sum
    end

   elements.map! { |x| x.to_s.rjust(4) }
   elements.each_slice(5) { |x| puts x.join }
end

#fib_bet(15)



def fib(quantity)
  first = 0
  second = 1
  elements = []
   quantity.times do
    elements.push(first)
    sum = first + second
    first = second
    second = sum
   end

  elements.map! { |x| x.to_s.rjust(second.to_s.length + 1) }
  elements.each_slice(5) { |x| puts x.join }
 end

 fib(20)







 #smaller problem: five fib numbers

 #three times...
 #start with the numbers 0 and 1
 #to calculate the next number:
 #a. find the number two back
 #b. find the number one back
 #c. add them together
 #d. put the result into the sequence
 # to calc the next number, go to (a)



#numbers1 = [0, 1, 1, 2, 3]


 #numbers2 = [5, 8, 13, 21, 34]

 #start with numbers1 as the sequence
 #five times...
 #start with the numbers 0 and 1
 #to calculate the next number:
 #a. find the number two back
 #b. find the number one back
 #c. add them together
 #d. put the result into the sequence
 # to calc the next number, go to (a)
 #final is result [5..9]
 quantity = 15
 sequence = [0, 1]

(quantity - 2).times do
  two_back = sequence[-2]
  one_back = sequence[-1]
  newb = two_back + one_back
  sequence.push(newb)
 end


sets = []
row_count = quantity / 5 - 1

 (0..row_count).each do |set_number|
 starts_at = set_number * 5
 ends_at = set_number + 4
 sets.push(sequence[starts_at..ends_at])
 end

 sets.each do |set|
   output = set.join(" ")
   #puts output
 end
