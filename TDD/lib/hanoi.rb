# [[5, 4, 3, 2, 1], [], []]
# [[5, 4, 3, 2], [1], []]
# [[5, 4, 3], [1], [2]]

# doesn't put a larger peice on a smaller piece
# taking in right input
# check that user input in right form
# placing piece on empty stack
# placing smaller piece on a larger

class TowersOfHanoi
    attr_reader :board
    def initialize
        @board = Array.new(3) {Array.new}  # [[], [], []]
        populate_board
    end

    def populate_board
        @board[0] += [5,4,3,2,1]
    end

    def move(pickup, place) # pickup from stack 1 place on stack 2 
        if valid_move?(pickup, place)
            piece = @board[pickup].pop
            @board[place].push(piece)
        end
    end

    def valid_move?(current_pos, next_pos)
        return false if current_pos < 0 || next_pos < 0
        return false if current_pos > 2 || next_pos > 2
        return false if current_pos.empty? 
        return false if @board[next_position].last < @board[current_pos].last
        return true
    end



end

b = TowersOfHanoi.new
print b.board