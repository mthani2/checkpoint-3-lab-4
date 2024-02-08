def convert(temp, measure="F")
    return "Temperature must be an integer" unless temp.class == Integer
    return "Temperature below Absolute Zero" if below_absolute_zero?(temp, measure)


    if measure == "C"
        return (temp - 32) * 5/9
    elsif measure == "F"
        return (temp * 9 / 5) + 32
    end
end 

def below_absolute_zero?(temp, measure)
    if measure == "C"
        return temp < -280
    elsif measure == "F"
        return temp < -474
    end
end

puts convert(32)          
puts convert(50)          
puts convert(212)
puts convert(-500)
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")
