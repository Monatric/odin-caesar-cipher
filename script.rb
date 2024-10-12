require "pry-byebug"

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
# p DOWNCASE_ALPHABET['d']

def caesar_cipher(string, shift_factor)
  strings = string.chars
  substitute_letters(strings, shift_factor).join

  # result = substituted_letters.join
end

def substitute_letters(strings, shift_factor)
  substituted_letters = strings.map do |element|
    if element.match?(/[a-zA-Z]/) == false
      element
    elsif element == element.upcase
      downcase_letter = element.downcase
      shift_sum = DOWNCASE_ALPHABET[downcase_letter] + shift_factor
      if shift_sum > 26
        shift_sum = (DOWNCASE_ALPHABET[downcase_letter] + shift_factor) - 26
        # p shift_sum
        DOWNCASE_ALPHABET.key(shift_sum).upcase
      end
    else
      shift_sum = DOWNCASE_ALPHABET[element] + shift_factor
      if shift_sum > 26

        shift_sum = (DOWNCASE_ALPHABET[element] + shift_factor) - 26
        # p shift_sum
        DOWNCASE_ALPHABET.key(shift_sum)
      end
      DOWNCASE_ALPHABET.key(shift_sum)
    end
  end
end

p caesar_cipher("What a st2ring!", 5)
