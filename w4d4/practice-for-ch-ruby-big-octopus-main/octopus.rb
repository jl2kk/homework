


def biggest_fish(arr)
    res = ""
    arr.each_with_index do |i,j|
        arr.each_with_index do |k,l|
            if i == l 
                break 
            elsif k.length > i.length
                res = k 
            end 
        end 
    end 
    res 
end 





def clever(arr)
    res = ""
    arr.each do |i|
        if i.length > res.length 
            res = i
        end 

        res 
    end 


end 



def dancing(arr,direction)
    arr.each_with_index do |j,k|
        if j == direction
            return 1 
        end 
    end 
end 



def fast (arr,structure)
    res = structure[arr]
end 
