# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
    @card_number
  end
  
  def stringsplit
    @splitted_card_number = @card_number.to_s.split(//)
    @splitted_card_number
  end
    @card_number
  def double_evens
    @doubled_splitted = @splitted_card_number.map { |n| n.to_i }
    counter = 0
    until counter > 14
    @doubled_splitted[counter] *= 2
    counter += 2
    end
    @doubled_splitted
  end
   
  def stringsplit_2
    @doubled_splitted = @doubled_splitted.join.split(//).map { |num| num.to_i }
    @doubled_splitted
  end
   
  def sum_it_up
  @sum =  @doubled_splitted.reduce(:+)
    @sum
  end
  
  def check_card
  @sum % 10 == 0
  end
  
end

# # # Refactored Solution

# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number
#     raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
#   end
  
#   def check_card
#     @splitted_card_number = @card_number.to_s.split(//)
#     @doubled_splitted = @splitted_card_number.map { |n| n.to_i }
#     counter = 0
#     until counter > 14
#     @doubled_splitted[counter] *= 2
#     counter += 2
#     end
#     @doubled_splitted = @doubled_splitted.join.split(//).map { |num| num.to_i }
#     @sum =  @doubled_splitted.reduce(:+)
#     @sum % 10 == 0 
#   end
# end

class CreditCard
  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
  end
  
  def check_card
    splitted_card_number = @card_number.to_s.split(//)
    doubled_splitted = splitted_card_number.map { |n| n.to_i }
    counter = 0
    until counter > 14
      doubled_splitted[counter] *= 2
      counter += 2
    end
    doubled_splitted = doubled_splitted.join.split(//).map { |num| num.to_i }
    sum =  doubled_splitted.reduce(:+)
    sum % 10 == 0 
  end
end

class CreditCard
  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError.new("Please enter a valid number, must be 16 digits.") if card_number.to_s.length != 16
  end
  
  def check_card
    splitted_card_number = @card_number.to_s.split(//).map! { |n| n.to_i }
      counter = 0
    until counter > 14
      splitted_card_number[counter] *= 2
      counter += 2
    end
    splitted_card_number = splitted_card_number.join.split(//).map { |num| num.to_i }
    splitted_card_number.reduce(:+) % 10 == 0 
    end
end


# Reflection
# What was the most difficult part of this challenge for you and your pair?
# Simply getting syntax right. We had good ideas from the start, but it took a minute to convert our pseudocode into actual working code.
# What new methods did you find to help you when you refactored?
# #split was a lifesaver. #reduce also was very helpful for adding an array together.
# What concepts or learnings were you able to solidify in this challenge?
# The things that solidified the most were just figuring out a fluid way to debug and get the code slick and working. Refactoring is key!