

def sum_to(n)
    
    if n < 0
        return nil
    elsif n == 1 
        return 1 

    else
        return n + sum_to(n-1)
    end
end 

def add_numbers(nums_array)
    
    if nums_array.empty?
        return nil 
    elsif nums_array.length == 1
        return nums_array[0]
    else 
        nums_array.pop + add_numbers(nums_array)
    end 
end 


def gamma_fnc(n)
    if n == 0 
        return nil 
    elsif n == 1
        return 1 
    else 
        return (n-1) * gamma_fnc(n-1)
    end 
end


def ice_cream_shop(flavors, favorite)

    if flavors.empty?
        return false 
    elsif flavors.pop == favorite
        return true
    else 
        ice_cream_shop(flavors,favorite)
    end 
end 


def reverse(string)
    res = ""

    if string.length == 0
        return string
    else
        return reverse(string[1..-1]) + string[0] 
    end 
end 


reverse("house") # => "esuoh"
reverse("dog") # => "god"
reverse("atom") # => "mota"
reverse("q") # => "q"
reverse("id") # => "di"
reverse("") # => ""