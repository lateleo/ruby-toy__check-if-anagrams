def anagrams?(str1, str2)
    if str1.length != str2.length
        return false
    end
    chars1 = str1.chars
    chars2 = str2.chars
    chars1.each do |elem1|
        pair = false
        chars2.each do |elem2|
            if elem1 == elem2
                pair = true
            end
        end
        if pair == false
            return false
        else
            chars2.delete_at(chars2.index(elem1))
        end
    end
    return true
end