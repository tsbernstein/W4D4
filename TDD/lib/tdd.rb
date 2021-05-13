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

    def my_transpose
        self.transpose
    end
end

# def stock_picker(arr)
#     least = []
#     greatest = []
#     (0...arr.length-1).each do |i|
#         if arr[i][1] < arr[i + 1][1]
#             least = arr[i]
#         end 
#     end
#     least_index = arr.index(least)
#     (least_index+1...arr.length-1).each do |i|
#         if arr[i][1] > arr[i+1][1]
#             greatest = arr[i]
#         else
#             greatest = arr[i+1]
#         end
#     end
#     result = []
#     result.push(least,greatest)
#     return result
# end

def stock_picker(arr)
    least = 0
    greatest = 0
    greatest_difference = 0
    # arr.each do |i|
    #     least << arr[i][1]
    # end
    (0...arr.length).each do |i|
        (1...arr.length).each do |j|
            if j > i && greatest_difference < arr[j][1] - arr[i][1] 
                least = i
                greatest = j
                greatest_difference = arr[j][1] - arr[i][1]
            end
        end
    end
    [arr[least], arr[greatest]]
end

arr = [["a", 100], ["b", 200], ["c", 50], ["d", 500], ["e", 400]]
p stock_picker(arr)