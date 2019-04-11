def sum_to(n)
    return n if n == 1
    return nil if n < 1
    n + sum_to(n-1)
end

def add_numbers(nums_arr)
    return nums_arr[0] if nums_arr.length == 1
    return nil if nums_arr.empty? == true

    nums_arr[0] + add_numbers(nums_arr[1..-1])
end

def gamma_fnc(n)
    return nil if n == 0
    return n if n == 1

    (n - 1) * gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty? == true
    return true if flavors[0] == favorite
    
    ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(str)
    return str if str.length == 1
    return "" if str.length < 1

    str[-1] + reverse(str[0..-2])
end
