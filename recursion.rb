def range(start, finish)
    res_arr = []
    return res_arr if finish - 1 < start
    [start] + range(start+1, finish) 
end

# p range(1, 5)

def range(start, finish)

    arr = []
    (start...finish).each { |nums|  arr << nums}
    arr
end

# p range(1, 5)


def exp(b, n)

    return 1 if n == 0
    b * exp(b, n - 1)

end


def exp(b, n)

    return 1 if n == 0
    return b if n == 1

    if n.even?
        exp(b, n / 2) * exp(b, n / 2)
    else
        b * exp(b, (n - 1) / 2) * exp(b, (n - 1) / 2)
    end

end

# p exp(2, 4)


# def deep_dup(array) # [1, [2], [3, [4]]]
#     new_arr = []

#     array.each do |ele|

#             new_arr << ele

#     end

#     new_arr

# end

# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# p b = deep_dup(robot_parts)
# p b[1] << "LEDS"
# p robot_partsp 

def fibonacci(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    fibonacci(n-1) << fibonacci(n-1)[-2] + fibonacci(n-1)[-1]
end




def fibonacci(n)

    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    arr = [0, 1]

    (3..n).each do

        arr << arr[-1] + arr[-2]

    end

    arr

end


def bsearch(array, target)

    midpoint = array.length / 2

    return nil if array.length <= 1 && array[0] != target

    if array[midpoint] == target 
        return midpoint
    elsif array[midpoint] > target
        bsearch(array[0...midpoint], target)
    elsif array[midpoint] < target 
        bsearch1 = bsearch(array[midpoint..-1], target)
        bsearch1 == nil? nil : bsearch1 + midpoint
    end

end


p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
