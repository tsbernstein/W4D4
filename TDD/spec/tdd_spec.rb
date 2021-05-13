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
end