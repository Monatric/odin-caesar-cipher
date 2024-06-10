downcase_alphabet = {
    'a' => 1,
    'b' => 2,
    'c' => 3,
    'd' => 4,
    'e' => 5,
    'f' => 6,
    'g' => 7
}
p downcase_alphabet['d']

def caesar_cipher(string, shift_factor)
    array_of_strings = string.split('')
    array_of_strings.map do |element|
        element.upcase
    end
end

p caesar_cipher('a', 3)