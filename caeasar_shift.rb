def caesar_shift (input, shift)
  chars = input.split("")
  i = 0
  chars.each do |char|
    ascii_code = char.ord.to_i
    if (ascii_code <= 90)
      new_code = ascii_code + shift
      if new_code > 90
        new_code -= 90
      end
    else
      new_code = ascii_code + shift.to_i
      if new_code > 122
        new_code -= 122
      end
    end
    chars[i] = new_code.chr
    i += 1
  end
  return chars.join
end

puts "Enter text to be encrypted"
input = gets.chomp
puts "Enter shift value"
shift = gets.chomp
output = caesar_shift(input, shift)
puts "Text in = #{input}"
puts "Encrypted text = #{output}"