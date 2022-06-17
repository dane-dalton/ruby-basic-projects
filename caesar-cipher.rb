def caesar_cipher(string, shft)
  str_arr = string.split("")
  shifted_arr = str_arr.map { |char| shift_char(char, shft) }
  new_str = shifted_arr.join
end

def shift_char(char, shft)
  ascii_char = char.ord
  if (ascii_char >= 65 && ascii_char <= 90)
    ascii_char += shft
    ascii_char = ascii_char - 90 + 64 if ascii_char > 90
  end
  if (ascii_char >= 97 && ascii_char <= 122)
    ascii_char += shft
    ascii_char = ascii_char - 122 + 96 if ascii_char > 122
  end
  ascii_char.chr
end

puts "What word would you like to encrypt?"
string = gets.chomp.to_s
puts "How many values would you like to shift by?"
shft = gets.chomp.to_i

p caesar_cipher(string, shft)