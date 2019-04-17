print "Enter a phrase: "
phrase = $stdin.gets.chomp

def upcase_lowcase(phrase)
  array = phrase.split("")
  upcase = 0
  lowcase = 0
  array.each do |i|
      case i
      when /[[:upper:]]/
        upcase += 1
      when /[[:lower:]]/
        lowcase += 1
      end
  end
  puts "UPPER CASE #{upcase}"
  puts "LOWER CASE #{lowcase}"
end

upcase_lowcase(phrase)
