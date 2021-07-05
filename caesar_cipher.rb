def caesar_cipher(message, shifting_factor)
    char_arr = message.split('')
    int_arr = char_arr.map { |char| (char == ' ' ? 32 : char.ord + shifting_factor) }
    shifted_char_arr = int_arr.map { |int| int.chr }
    shifted_char_arr.join('')
end

shifted_message = caesar_cipher("What a string!", 5)
puts shifted_message