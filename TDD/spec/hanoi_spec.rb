require 'hanoi'

describe TowersOfHanoi do
    subject(:towers) { TowersOfHanoi.new }

    describe "#move" do
        it "moves ring to another tower" do
            expect{towers.move([1, 0])}.not_to raise_error
        end
    end
end