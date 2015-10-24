puts "Enter a string and I'll translate it to pig latin"
string = gets.chomp

vowels = [:a, :e, :i, :o, :u]

words = string.split " "
pig_latin_words = Array.new

words.each do |word|
	length = word.length
	if vowels.include? word[0].to_sym
		pig_latin_words << (word + "ay")
	else
		pig_latin_words << (word[1..length] + word[0] + "ay")
	end
end

new_string = pig_latin_words.join " "

puts new_string