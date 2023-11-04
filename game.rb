require 'minitest/autorun'
require 'minitest/pride'

class Game
  def run(*arguments)
    board = Board.new([[false, false, false],
                       [true, true, true],
                       [false, false, false]])

    next_gen_board = generate_next_board(board)

    return next_gen_board
  end

  def generate_next_board(board)

    # for every cell of the board
    [0,1,2].each do |row|
      [0,1,2].each do |col|
        current_cell = board.get_cell(row,col)
        # cell: find my neighbours
        neighbours = get_neighbours(row,col)
        # cell: for every neighbour ask them if they are alive or not?
        # cell: count them up
        alive_zioms_count = neighbours.select(&:true).count

      end
    end

      # cell: 
        # if I'm alive
        # else if I'm dead
    #

    return board
  end

  def get_neighbours(row,col)
    neighbours = []

    if board_get_cell(row-1, col-1) != :no_such_cell
      neighbour = board.get_cell(row-1, col-1)
      neighbours.push(neighbour)
    end

    if board_get_cell(row-1, col) != :no_such_cell
      neighbour = board.get_cell(row-1, col)
      neighbours.push(neighbour)
    end

    if board_get_cell(row-1, col+1) != :no_such_cell
      neighbour = board.get_cell(row-1, col+1)
      neighbours.push(neighbour)
    end

    if board_get_cell(row, col-1) != :no_such_cell
      neighbour = board.get_cell(row-1, col-1)
      neighbours.push(neighbour)
    end

    if board_get_cell(row, col+1) != :no_such_cell
      neighbour = board.get_cell(row-1, col+1)
      neighbours.push(neighbour)
    end

    if board_get_cell(row+1, col-1) != :no_such_cell
      neighbour = board.get_cell(row-1, col-1)
      neighbours.push(neighbour)
    end

    if board_get_cell(row+1, col) != :no_such_cell
      neighbour = board.get_cell(row-1, col)
      neighbours.push(neighbour)
    end

    if board_get_cell(row+1, col+1) != :no_such_cell
      neighbour = board.get_cell(row-1, col+1)
      neighbours.push(neighbour)
    end

    return neighbours
  end
end

class Board
  def initialize(initial_board)
    @internal_board = initial_board
  end

  def get_cell(row,col)
    return :no_such_cell if row < 0 || col < 0
    return :no_such_cell if row > 2 || col > 2
    return @internal_board[row][col]
  end
end


class GameTest < MiniTest::Unit::TestCase
  def setup
    # do whatever setup you need here
    # store instances in instance variables
  end

  def test_run
    # set up the test
    # make the assertion
    # e.g., assert_equal 2, @calc.add(1,1)
    # refute Game.new.run, "result"
    b = Board.new([[false, false, false],
                   [true, true, true],
                   [false, false, false]])
    puts b.get_cell(0,0)
    puts b.get_cell(0,1)
    puts b.get_cell(0,2)
    puts b.get_cell(1,0)
    puts b.get_cell(1,1)
    puts b.get_cell(1,2)
    puts b.get_cell(2,0)
    puts b.get_cell(2,1)
    puts b.get_cell(2,2)

    puts Game.new.run
  end
end

