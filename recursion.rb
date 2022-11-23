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

p exp(2, 4)


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
# p robot_parts

def fibonacci(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    fibonacci(n-1) << fibonacci(n-1)[-2] + fibonacci(n-1)[-1]
end

p fibonacci(6)



