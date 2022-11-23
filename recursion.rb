def range(start, finish)
    res_arr = []
    return res_arr if finish-1 < start
    [start] + range(start+1, finish) 
end

p range(1, 5)