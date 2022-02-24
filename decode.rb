# decode_char method
def decode_char(ch)
  case ch
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'J'
  when '.-.'
    'K'
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  else
    ch
  end
end

puts decode_char(".-")

# decode_word method
def decode_word(str)
  res = ''
  str.split.each do |item|
    res += decode_char(item)
  end
  res
end

puts decode_word("-- -.--")

# decode method
def decode(str)
  res = ''
  str.split('   ').each do |item|
    res += " #{decode_word(item)}"
  end
  res.strip
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
