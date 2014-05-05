# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode

# => DEFINE a method called reverse_words which takes a string as an argument.
# => IF the string is empty, THEN RETURN itself.
# => IF the string does not have a space, reverse the word using #reverse and RETURN it. 
# => ELSE SEPARATE the string by the spaces.
# => REVERSE each string  with #reverse.
# => CONCATENATE the strings with a space in between them.

# 3. Initial Solution

def reverse_words(string)
	raise ArgumentError.new('String not provided.') if string.nil?
	return string if string.empty?
	if string.match(/\s/) 
		reversed_words = []
		string.split(/\s/).each do |word| 
			reversed_words << word.reverse
		end
		reversed_words.join(' ')
	else
		string.reverse
	end
end


# 4. Refactored Solution

def reverse_words(string)
	raise ArgumentError.new('String not provided.') if string.nil?
	return string if string.empty?
	if string.match(/\s/) 
		string.split(/\s/).inject([]) do |reversed_words, word| 
			reversed_words.push(word.reverse)
			puts word
			puts reversed_words
			reversed_words.join(' ')
		end
	else
		string.reverse
	end
end

reverse_words('eiko seino')


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def random_word(length = 5)
  rand(36**length).to_s(36)
end

def assert 
	raise "Assertion Failed!" unless yield
	puts true
end

assert { reverse_words("") == "" }
assert { 
	word = random_word
	reverse_words(word) == word.reverse
 }
assert { 
	
	word1 = random_word
	word2 = random_word
	reverse_words("#{word1} #{word2}")  == "#{word1.reverse} #{word2.reverse}" 
}
assert { reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }


# 5. Reflection 