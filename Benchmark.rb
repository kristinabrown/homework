require "benchmark"

#benchmark of array.find

array = (1..1_000_000).to_a

res = Benchmark.measure do
  array.find { |i| i == (array.length - 3) }
end

puts "benchmarking finding element in and array of 1"
puts res

#end


array = (1..10_000_000).to_a

res = Benchmark.measure do
  array.find { |i| i == (array.length - 3) }
end

puts "benchmarking finding element in and array of 1"
puts res

#@total=1.0500

#benchmark of hash.fetch

hash = {}

puts "will add 1mil items to a hash"
1_000_000.times do |i|
  hash[i.to_s] = i
end

res = Benchmark.measure do
  hash.fetch(9009.to_s)
end

puts "benchmarking fetching element from a hash of 10"
puts res

#0.000009

puts "will add 10 items to a hash"

10.times do |i|
  hash[i.to_s] = i
end

res = Benchmark.measure do |i|
  hash.fetch(9.to_s)
end

puts "bench marking fetching element from a hash of 10"
puts res

# 0.000009

#benchmark of array.sort

array = (1..1_000_000).to_a

Benchmark.measure do |i|
  array.sort{ |x,z| x <=> z } == i
end

#@total=0.09999

#benchmark of array.map

array = (1..1_000_000).to_a

Benchmark.measure do |i|
  array.map{ |x| x.to_s + "!" } == i
end

#@total=0.69000


#benchmark of gsub (large and short string)

string1 = "Hello this is going to be a long string that we are going to gsub"
string2 = "shorty"

Benchmark.bm do |x|
  x.report { string1.gsub(/[aeiou]/, '*') }  #0.000043
  x.report { string2.gsub(/[aeiou]/, '*') }  #0.000034
end

#benchmark creating single quoted string vs double quoted

#benchmark string interpolation vs concatenation

var = "the middle part"

Benchmark.bm do |x|
  x.report { "a" + var + "b"} #0.000003
  x.report { "a#{var}b"}  #0.000003
end

#benchmark upcase vs upcase!

string = "this is my string"

Benchmark.bm do |x|
  x.report { string.upcase }
  x.report { string.upcase! }
end

#benchmark index vs include

#benchmark read a file

puts "file IO"

res = Benchmark.measure do
  File.read("/usr/share/dict/words")
end

puts "time to read FILE from file system"
puts res

#@total=0.0100
