print "Write something: "
phrase = $stdin.gets.chomp

def alphabet_position(phrase)
  alphabet = Hash.new(0)
  x = 1
  ('a'..'z').each do |i|
    alphabet[i] = x
    x += 1
  end

  phrase_array = phrase.split("")
  output = []
  x = 0
  phrase_array.each do |i|
    output[x] = alphabet[i].to_s
    x += 1
  end
  puts output.join(" ")
end

alphabet_position(phrase)
