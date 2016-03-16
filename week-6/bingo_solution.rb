# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline: Create a class called BingoBoard, with two instance variables
# Create a method with an argument to initialize, and create variables that define instance variables, as well as a hash that points the letters of BINGO to index numbers


# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Use instance variable, number to store array that holds a random letter of BINGO and a random number 1-100
 

# # Check the called column for the number called.
# # If the number is in the column, replace with an 'x'

#   Define variables for the called number and the column we are checking
#   Iterate over the entire board, checking columns first and then matching the numbers in the correct column with our called number
#   IF they match, replace called number with an X


# # Display a column to the console
#   #fill in the outline here
#   Define a variable that links our called letter to the original BINGO hash
#   Use the hash value as an index number on the board arrays to display each of those values as a column
# # Display the board to the console (prettily)
#   Print a string of "BINGO"
#   "p" the board to keep the columns in order

# Initial Solution

class BingoBoard
  attr_accessor :bingo_board, :number 
  
 
  
def initialize(board)
  @bingo = { "B" => 0, "I" => 1, "N"=> 2, "G"=> 3, "O"=> 4 }
  @bingo_board = board
  @number = []
end

def call
  
  @number = [["B", "I", "N", "G", "O"].shuffle.first, rand(1..100)] 
  p "The number is #{@number.join}."
end

def display_column
  
  bingo_letter = @bingo[@number[0]]
  @bingo_board.each {|bb| p bb[bingo_letter]}
end


def display_board
  puts " B   I   N   G   O  "
  @bingo_board.each {|board| p board}
end


def check

  bingo_letter = @bingo[@number[0]]
  bingo_num = @number[1]
  @bingo_board.map do |bb| 
  if bb[bingo_letter] == bingo_num
    bb[bingo_letter] = "X"
    puts "You have it!"
  else
    puts "Not today."
  end
 end
end

end

# Refactored Solution

class BingoBoard
  attr_accessor :bingo_board, :number 
  
  def initialize(board)
   @bingo = { "B" => 0, "I" => 1, "N"=> 2, "G"=> 3, "O"=> 4 }
   @bingo_board = board
   @number = []
  end

  def call
   @number = [["B", "I", "N", "G", "O"].sample, rand(1..100)] 
   p "The number is #{@number.join}."
  end

  def display_column
      bingo_letter = @bingo[@number[0]]
    @bingo_board.each {|bb| p bb[bingo_letter]}
  end


  def display_board
   puts " B   I   N   G   O  "
   @bingo_board.each {|board| p board}
  end


  def check
    bingo_letter = @bingo[@number[0]]
    bingo_num = @number[1]
    @bingo_board.map do |bb| 
    if bb[bingo_letter] == bingo_num
      bb[bingo_letter] = "X"
      puts "You have it!"
    else
      puts "Not today."
    end
   end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)



#Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding was very simple...until I had to put the code into practice. The original pseudocode changed a ton by the time I finished this module.
What are the benefits of using a class for this challenge?
It allows a bunch of information to remained in a contained bubble to be reused until new info is introduced. It is also very case specific stuff that wouldn't matter much to anyone else.
How can you access coordinates in a nested array?
By calling each layer of each nested array individually. It's fairly straightforward, especially if you keep the rooms of a house concept in mind.
What methods did you use to access and modify the array?
I used map, a lot of array access, and an if statement. It worked pretty well.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I used #sample to randomize the array of letters in BINGO. Super easy!
How did you determine what should be an instance variable versus a local variable?
I figured that anything that needed to travel between methods should be an instance variable, while stuff that could be contained could remain a local variable. There was a lot of switching around, and I definitely loaded up on the instance variables to start. But I think it all pared down nicely.
What do you feel is most improved in your refactored solution?
I cleaned up the indentation A LOT.