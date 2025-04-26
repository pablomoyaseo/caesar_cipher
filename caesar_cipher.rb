
def caesar_cipher(string, number)
  alphabet = ('a'..'z').to_a
  encrypted = string.chars.map do |char|
    if alphabet.include?(char.downcase)  
      original_index = alphabet.index(char.downcase)
      new_index = (original_index + number) % 26  
      char == char.downcase ? alphabet[new_index] : alphabet[new_index].upcase
    else
      char  
    end
  end
  encrypted.join
end

puts caesar_cipher('Hello World', 3)  
puts caesar_cipher('What a string!', 5)  

