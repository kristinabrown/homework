# class EncryptionEngine
#   attr_reader :engine
#
#   def initialize
#     @engine = engine
#   end
#
# end
#
# class Encryptor
#
#   def encrypt(x)
#     true
#   end
# end
#
# class Decryptor
#   # Your code here
# end

array = ('a'..'z').to_a

def encrypt_hash(array)
  new_hash =  array.group_by do |x|
      if array.index(x) < 13
         array[(array.index(x)) + 13]
      else
         array[(array.index(x)) - 13]
      end
    end
    puts new_hash.invert
  end



def encrypt(string)




end


#   array.index[0]
#     puts (array.index[0]) + 13
#   end
# end



# array.map.with_index |x, i| { puts x.index(i + 13) }

encrypt_hash(array)


# array.fetch { |x| puts x.index + 13 }
