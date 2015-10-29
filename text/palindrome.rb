puts "Enter a string and I'll tell you if it's a palindrome"
string = gets.chomp

unless string == string.reverse
	puts "#{string} is not a palindrome"
else 
	puts "#{string} is a palindrome!"
end