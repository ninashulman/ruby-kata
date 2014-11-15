# Review String and Regexp

# Define a method hello(name) that takes a string representing a name and returns 
# the string "Hello, " concatenated with the name.

def hello(name)
   return "Hello, #{name}" 
end

# puts hello("Nina")

# Define a method starts_with_consonant?(s) that takes a string and returns true 
# if it starts with a consonant and false otherwise. 
# (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
    !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end
#puts starts_with_consonant? "Nina"
#puts starts_with_consonant? "Amberocrambe"
#puts starts_with_consonant? 123

# Define a method binary_multiple_of_4?(s) that takes a string and 
# returns true if the string represents a binary number that is a multiple of 4. 
# NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4? (s)
	#s.to_i(2) % 4 == 0
	s == "0" || s.class.to_s =='String' && s.length > 2 && s =~ /^[01]*00$/
	
end

#puts binary_multiple_of_4? ""
#puts binary_multiple_of_4? '00'
#puts binary_multiple_of_4? "1100"
#puts binary_multiple_of_4? 0
#puts binary_multiple_of_4? "0"
#string = "1100"
#puts binary_multiple_of_4? "#{string}"


