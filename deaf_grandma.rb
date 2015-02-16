
class Grandma

    def shouted?(string)
      string == string.upcase
    end

    def saying_goodbye(string)
      string == "GOODBYE!"
    end

    def said_nothing(string)
      string.empty?
    end

    def converse
      puts "HEY KID!"
      goodbye = 0
      until goodbye >=2
        response = gets.chomp
        if said_nothing(response)
          puts "WHAT?"
        elsif saying_goodbye(response)
            goodbye += 1
              if goodbye >= 2 
              puts "LATER, SKATER!"
            else
              puts "LEAVING SO SOON?"
            end
        elsif shouted?(response)
          puts "NO, NOT SINCE 1946!"
        else
          puts "SPEAK UP, KID!"
        end
      end
    end
  end

grandma = Grandma.new

grandma.converse
