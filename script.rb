# require "pry-byebug"

DOWNCASE_ALPHABET = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26
}

def caesar_cipher(string, shift_factor)
  strings = string.chars
  result = ""
  strings.map do |element|
    unless alphabet?(element)
      result << element
      next
    end
    if element == element.upcase
      element.downcase!
      result << substitute_letter(element, shift_factor).upcase
    else
      result << substitute_letter(element, shift_factor)
    end
  end
  result
end

def substitute_letter(element, shift_factor)
  shift_sum = DOWNCASE_ALPHABET[element] + shift_factor
  shift_sum = (DOWNCASE_ALPHABET[element] + shift_factor) - 26 if shift_sum > 26
  result = DOWNCASE_ALPHABET.key(shift_sum)
  result unless shift_sum > 26
end

def alphabet?(element)
  element.match?(/[a-zA-Z]/)
end

p caesar_cipher("What a st2ring!", 5)
