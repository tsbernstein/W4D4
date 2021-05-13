require "tdd"

describe "#my_uniq" do
    context "remove duplicates from the array" do  # optional
        it "correctly removes duplicate values" do 
            expect(my_uniq([1,1,2,2,3])).to eq([1,2,3])
        end
    end
end

describe Array do
    subject(:array) {Array.new([-1, 0, 2, -2, 1])}

    describe "#two_sum" do 
        it "should find all element positions that sums to 0" do
            expect(array.two_sum).to eq([[0,4], [2,3]])
        end
    end

    describe "my_transpose" do
        it "transposes an array" do
            arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
            expect(arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end
end

describe "stock_picker" do
    it "finds the most profitable pair" do
        arr = [["a", 100], ["b", 200], ["c", 50], ["d", 500], ["e", 400]]
        expect(stock_picker(arr)).to eq([["c", 50], ["d", 500]])
    end
end