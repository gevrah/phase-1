# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase
#cartmans_phrase = "Screw you guys " + "I'm going home."
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected =, expecting end-of-input
# 5. Where is the error in the code?
# after the "=" before "carmans_phrase"
# 6. Why did the interpreter give you this error?
# The variable assignment is backwards. The variable has to be the first thing, and the operations must be after the equals sign.

# --- error -------------------------------------------------------

#south_park
#end
# 1. What is the line number where the error occurs?
# 170 (35)
# 2. What is the type of error message?
# syntax error
# 3. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 4. Where is the error in the code?
# after "Write your reflection below as a comment."
# 5. Why did the interpreter give you this error?
# south_park is a loose object with no ending. The interpreter searched the entire document for an end, but found none.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# main
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# Within the parenthesis
# 5. Why did the interpreter give you this error?
# cartman is an object with parenthesis that are calling for a method, but no method is provided

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')
#end
# 1. What is the line number where the error occurs?
# 170 (70)
# 2. What is the type of error message?
# syntax error
# 3. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input, expecting keyword_end
# 4. Where is the error in the code?
# At the very end of the document (but really after line 69)
# 5. Why did the interpreter give you this error?
# the object.method of cartmans_phrase('I hate Kyle') has no end.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says (offensive_message)

# 1. What is the line number where the error occurs?
# 84 (88)
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# 'carman_says' has the wrong number of arguments
# 4. Where is the error in the code?
# in line 88
# 5. Why did the interpreter give you this error?
# because when calling cartman_says, there isn't the necessary argument as defined by the method.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
end
# 1. What is the line number where the error occurs?
# 170 (110)
# 2. What is the type of error message?
# Syntax error
# 3. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 4. Where is the error in the code?
# Line 110, after cartmans_lie
# 5. Why did the interpreter give you this error?
# There needs to be an end after calling cartmans lie

# --- error -------------------------------------------------------

#"Respect my authoritay!" *5

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# At the asterisk
# 5. Why did the interpreter give you this error?
# The two objects need to be flipped. "Respect my authoritay!" can be said 5 times, but not vice versa.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20*0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# That there is an attempt to divide by 0
# 4. Where is the error in the code?
# At the / symbol
# 5. Why did the interpreter give you this error?
# Integers cannot be divided by 0. Maybe try multiplying?

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /home/ubuntu/workspace/phase-0/week-4/cartmans_essay.md (where it tried to load the file from by default)
# 4. Where is the error in the code?
# at "carmans_essay.md"
# 5. Why did the interpreter give you this error?
# This file is not stored on my workspace or anywhere near there. It couldn't find it!


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# The unexpected end of input errors were difficult, because you don't know exactly where that end was supposed to go. It requires a little bit of hunting.
#How did you figure out what the issue with the error was?
# A lot of the detective work was simple interpretation or translation of the messages. Trying to figure out a literal translation took a little getting used to, but after figuring out the method to the madness, it started to make sense.
#Were you able to determine why each error message happened based on the code? 
# For the most part, yes. Now and then, it took a little guesswork, but yes, eventually each of them became pretty clear.
#When you encounter errors in your future code, what process will you follow to help you debug?
# I will analyze the error messages and follow the trail of breadcrumbs back to the line that I screwed up on. Hopefully things work out as well as they did here. 