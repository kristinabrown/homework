
def credit_check(card_number)

  number_array = card_number.split(//).reverse

  odds = []
  others = []

  number_array.each_with_index do |digit, index|
    if index.odd?
      odds.push(digit)
    else
      others.push(digit)
    end
  end

  odds.each do |x|
    x = x.to_i * 2
    if x >= 10
     x -= 9
    end
    others.push(x)
  end

  sum = 0

  others.each do |x|
    sum += (x.to_i)
  end

  if sum % 10 == 0
    puts "the number #{card_number} is valid!"
  else
    puts "the number #{card_number} is invalid!"
  end

end


# def credit_check(card_number)
#
#   number_split = []
#
#   number_split = card_number.split(//)
#
#   number_split[14] = number_split[14].to_i * 2
#   if number_split[14] >= 10
#     number_split[14] = number_split[14] - 9
#   end
#
#   number_split[12] = number_split[12].to_i * 2
#   if number_split[12] >= 10
#     number_split[12] = number_split[12] - 9
#   end
#
#   number_split[10] = number_split[10].to_i * 2
#   if number_split[10] >= 10
#     number_split[10] = number_split[10] - 9
#   end
#
#   number_split[8] = number_split[8].to_i * 2
#   if number_split[8] >= 10
#     number_split[8] = number_split[8] - 9
#   end
#
#   number_split[6] = number_split[6].to_i * 2
#   if number_split[6] >= 10
#     number_split[6] = number_split[6] - 9
#   end
#
#   number_split[4] = number_split[4].to_i * 2
#   if number_split[4] >= 10
#     number_split[4] = number_split[4] - 9
#   end
#
#   number_split[2] = number_split[2].to_i * 2
#   if number_split[2] >= 10
#     number_split[2] = number_split[2] - 9
#   end
#
#   number_split[0] = number_split[0].to_i * 2
#   if number_split[0] >= 10
#     number_split[0] = number_split[0] - 9
#   end
#
#
#   sum = 0
#
#   number_split.each do |x|
#     sum += (x.to_i)
#   end
#
#
#
#  if sum % 10 == 0
#    puts "the number #{card_number} is valid!"
#  else
#    puts "the number #{card_number} is invalid!"
#  end
#
# end

credit_check("4929735477250543")
credit_check("5541808923795240")
credit_check("5541801923795240")
credit_check("342804633855673")
credit_check("342801633855673")
