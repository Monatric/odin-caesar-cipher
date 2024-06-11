obj 1: to convert a simple "a", "b", "c", to an x shift factor (right)
    1. make a key/value pair, with the letters as keys and their values as the letters' corresponding position
    2. split the string argument into a individual characters
    3. iterate over that array
        if the character matches in one of the keys in the hash,
        take that key's value
        add it to the shift_factor
        find the sum's matching value in the hash
        the matching value will be its key, subsitituting it to that character in the array
        join the array to return the encrypted string

obj 2: to wrap from "z" to "a"
    1. if shift_sum is over 26,
        add DOWNCASE_ALPHABET[element] to shift_factor
        the sum is subtracted to 26
        that is the shift_sum


obj 3: how to keep the same case
    1. if element is upcase
        change to downcase temporarily
        proceed with the algo of obj 2
        change to upcase
        return that final letter

obj 4: characters other than the alphabet are ignored
    1. if element is not a key in the hash
        just return that element