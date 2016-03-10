# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3
def my_array_sorting_method(source)
  integer_array = []
  string_array = []
  source.each do |x| 
  if x.is_a?(Integer)
     integer_array << x
  else
     string_array << x
  end
end
  integer_array.sort.concat(string_array.sort)
end

my_array_sorting_method(i_want_pets)



def my_hash_sorting_method(source)
  source.sort_by {|pet, age| age}
end

my_hash_sorting_method(my_family_pets_ages)
# Identify and describe the Ruby method(s) you implemented.
# is_a? - This is a test to determine what class an element is. I used it to check if an element was an integer in order to split up the integers and strings.
# each - An iterator that checks each element of an array.
# sort - Organizes the elements of an container (generally alphabetically or numerically)
# concat - short for concatenate, concat destructively combines two arrays into one.
# sort_by - similar to sort, sort_by allows you to choose what specific element you want to sort by. In this case, values of a hash.


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #