# Review Array, Hash and Enumerable
#
# Define a method sum which takes an array of integers as an argument and 
# returns the sum of its elements. For an empty array it should return zero.

def sum(int_array)
    sum = 0

    #puts int_array.class.to_s == 'Array'
    # Check that int_array behaves like array   
    if int_array.respond_to?(:each)
        int_array.each do |num|
            if num.class.to_s =='Fixnum' 
                sum += num
            else
                puts "Non-integer entry #{num} of the array are not added to the sum"
            end
        end
    else
        raise "Input parameter is not an array"
    end
    sum
end

raise 'sum([1,2,3]) != 6' unless sum([1,2,3]) == 6

#puts "Test call to sum: #{sum([4,5,1])}"

# Define a method max_2_sum which takes an array of integers as an argument and 
# returns the sum of its two largest elements. 
# For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(int_array)
    sum = 0
    if int_array.size >= 2
        sorted = int_array.sort
        reversed = sorted.reverse
        sum = reversed[0] + reversed[1]
    else
        unless int_array.empty?
            sum = int_array[0]
        end
        
    end
    
    sum
end

#puts max_2_sum([4,2,6,4,1])
#puts max_2_sum([7])
#puts max_2_sum([7,1])
#puts max_2_sum([])

# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and 
# returns true if any two distinct elements in the array of integers sum to n. 
# An empty array or single element array should both return false.
=begin
def sum_to_n? (int_array, n)
    hash = Hash.new
    int_array.each do |num|
        # Check if we found the 2nd addend  
        if hash.key? num
            return true
        else
            # Key = candidate for the 2nd addend in the sum
            hash[n-num] = num
        end
    end
    return false
end
=end

def sum_to_n? (int_array, n)
    found = false
    secondAddendCandidates = []
    int_array.each do |num|
        # Check if we found the 2nd addend  
        if secondAddendCandidates.include? num
            found = true
            break
        else
            # Key = candidate for the 2nd addend in the sum
            secondAddendCandidates << n-num
        end
    end

    found
end

raise 'sum_to_n?([6, 5, 1], 7)' unless sum_to_n?([6, 5, 1], 7) == true