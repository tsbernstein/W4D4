require 'hanoi'

describe TowersOfHanoi do
    subject(:towers) { TowersOfHanoi.new }

    describe "#move" do
        it "valid input doesn't raise error" do
            expect{towers.move(1, 2)}.not_to raise_error
        end

        it "prevents ring from being placed on same position" do
            expect(towers.move(0, 0)).to eq(nil)
        end
    end

    describe "#valid_move?" do
        it "should be in a range from 0 to 2" do
            expect(towers.valid_move?(0, 2)).to eq(true)
        end

        it "prevents from going out of bounds" do
            expect(towers.valid_move?(-1, 5)).to eq(false)
        end

        it "return false if current position is empty" do
            expect(towers.valid_move?(1, 2)).to eq(false)
        end
    end
end