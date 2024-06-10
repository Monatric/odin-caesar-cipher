DOWNCASE_ALPHABET = {
    'a' => 1,
    'b' => 2,
    'c' => 3,
    'd' => 4,
    'e' => 5,
    'f' => 6,
    'g' => 7
}
# p DOWNCASE_ALPHABET['d']

def caesar_cipher(string, shift_factor)
    array_of_strings = string.split('')
    substituted_letters = array_of_strings.map do |element|
        shift_sum = DOWNCASE_ALPHABET[element] + shift_factor
        DOWNCASE_ALPHABET.key(shift_sum)
    end
    result = substituted_letters.join
end

p caesar_cipher('abg', 2)