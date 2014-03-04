def caesar_cipher(str, shift)
  letters = ("a".."z").to_a

  message = ""
  str.each_char do |char|
    if char == " "
      encoded_str << " "
      next
    end

    old_idx = letters.find_index(char)
    new_idx = (old_idx + shift) % letters.count

    message << letters[new_idx]
  end

  message
end