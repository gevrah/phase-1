# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# # Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================

p array[1][1][2][0]

# # ============================================================

# # Hole 2
# # Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |element|
    if element.is_a?(Integer)
      element + 5
    else
     element.map! do |i|
        i + 5
      end
    end 
end

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

 startup_names.map! do |word1|
     if word1.is_a?(String)
       word1 + "ly"
     else
      word1.map! do |word2|
        if word2.is_a?(String)
         word2 + "ly"
       else word2.map! do |word3|
         word3 + "ly"
       end
      end
     end 
    end
 end


# Refactored Solution

startup_names = startup_names.flatten(2).map! {|word| word + "ly"}
 #This didn't work ideally, as it required another variable and didn't return the exact array that we started with, but it was a fun employment of some other enumerable methods.

# What are some general rules you can apply to nested arrays?
# I like to work from the outside inward, identifying every set of arrays as they fill in the larger array.
# What are some ways you can iterate over nested arrays?
# #each and #map work great, but it's important to identify how many times they'll need to be called. Flatten also works like a dream, as long as you don't need to return the original array
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# Flatten was a great tool that seemed like a quick fix. #is_a also worked very well to perform IF loops.