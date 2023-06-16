MORSE_CODE_DICT = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(char)
  MORSE_CODE_DICT[char].upcase
end

def decode_word(word)
  splited = word.split
  decoded_word = ''
  splited.each do |c|
    decoded_word += decode_char(c)
  end
  decoded_word
end

def decode(string)
  splited_string = string.split('   ')
  decoded_message = ''
  splited_string.each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
