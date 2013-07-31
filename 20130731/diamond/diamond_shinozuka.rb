# coding: utf-8
class Diamond
  def self.write(width, char = '*')
    if width =~ /\D/ or width.to_i.even?
      puts "入力値は不正です"; return 
    end

    shape = Array::new
    width = width.to_i
    0.step(width/2, 1) { |i| shape << set_line(char, width, i) }
    (width/2 - 1).step(0, -1) { |i| shape << set_line(char, width, i) }
    puts shape.join("\n") 
  end

  def self.set_line(char, width, i)
    line = ""
    line << char
    line << (' ' * (i * 2 - 1) + char) unless i == 0 or i == width
    return line.center(width)
  end
end

print "奇数を入力してください:"
Diamond.write(gets.chop)
