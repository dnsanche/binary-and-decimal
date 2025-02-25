# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  binary_base_2 = [ 128, 64, 32, 16, 8, 4, 2, 1 ]
  index_array = []
  decimal_number = 0

  binary_array.each_with_index do |bit, index| 
   if bit == 1 
    index_array << index 
   end
  end 

  index_array.each do |index|
    decimal_number += binary_base_2[index]
  end 
  return decimal_number
end
