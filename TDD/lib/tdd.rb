def my_uniq(array)
    new_arr = []
    array.each {|ele| new_arr << ele unless new_arr.include?(ele)}
    return new_arr
end

class Array
    def two_sum
        pairs = []
        self.each_with_index do |el, i|
            self.each_with_index do |el2,j|
                if el + el2 == 0 && j > i
                    pairs << [i,j]
                end
            end
        end
        pairs
    end
end