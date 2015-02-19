require 'pry'
class Chisel
  attr_accessor :paragraph, :header

  def parse(text)
    if text.include? "#"
      @header = parse_header(text)
    else
      @paragraph = text
    end
  end

  def parse_header(text)
    hash_count = text.chars.count do |char|
       char == "#"
     end
     text.delete!("#")
     text = "<h#{hash_count}>#{text}</h#{hash_count}>"
  end

end

parser = Chisel.new
