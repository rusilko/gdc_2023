require 'minitest/autorun'
require 'minitest/pride'
require 'set'

class Game

end

class Cell
  def initialize(x, y, isAlive = false)
    @x = x
    @y = y
    @isAlive = isAlive
  end

  def x
    @x
  end

  def y
    @y
  end

  def alive?
    @isAlive
  end

  def neighbours
    ret_val = Set.new
    [-1,0,1].each do |i|
      [-1,0,1].each do |j|
        next if i == 0 && j == 0
        new_cell = Cell.new(@x+i, @y+j)
        ret_val.add(new_cell)
      end
    end

    ret_val
  end

  def eql?(other)
    @x == other.x && @y == other.y
  end

  def hash
    [@x, @j].hash
  end
end

class GameTest < MiniTest::Unit::TestCase
  def setup
    # do whatever setup you need here
    # store instances in instance variables
  end

  def test_cell
    c = Cell.new(0,0,true)

    assert c.alive?
  end

  def test_second
    c = Cell.new(1,1, true)
    expected = Set.new([Cell.new(0,0,true), Cell.new(0,1,true), Cell.new(0,2,true), Cell.new(1,0,true), Cell.new(1,2,true), Cell.new(2,0,true), Cell.new(2,1,true), Cell.new(2,2,true)])
    result = c.neighbours

    assert_equal c.neighbours, Set.new([Cell.new(0,0,true), Cell.new(0,1,true), Cell.new(0,2,true), Cell.new(1,0,true), Cell.new(1,2,true), Cell.new(2,0,true), Cell.new(2,1,true), Cell.new(2,2,true)])
  end

  def test_game
    g = Game.new([
  end
end

