puts "Enter a string and I'll count the vowels"
string = gets.chomp

vowels = { a: 0, e: 0, i: 0, o: 0, u: 0 }

words = string.split " "

words.each do |word|
	letters = word.split ""
	letters.each do |letter|
		if vowels.include? letter.to_sym
			vowels[letter.to_sym] += 1
		end
	end
end

puts "the vowel counts are:"

vowels.each do |vowel, count|
	puts "#{vowel}: #{count}"
end