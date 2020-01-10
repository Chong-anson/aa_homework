def clever_fish(array)
    largest = array.shift
    array.each do | ele | 
        largest = (ele.length > largest.length )? ele : largest 
    end 
    largest
end 

def dominant_fish(array)
    middle = array.length / 2
    return self if array.length < 2 

    left = array.take(middle)
    right = array.drop(middle)
    sorted_left = dominant_fish(left)
    sorted_right = dominant_fish(right)

    if left.last.length > right.last.length 
        left.last 
    else 
        right.last
    end 

end 


p dominant_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# => "fiiiissshhhhhh"