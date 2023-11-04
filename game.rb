require 'minitest/autorun'
require 'minitest/pride'
require 'set'

class Cell
  def initialize(x, y, isAlive)
    @x = x
    @y = y
    @isAlive = isAlive
  end

  def alive?
    @isAlive
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

  def second_test
    c = Cell.new(1,1, true)

    assert c.neighbours, [Cell.new(0,0,true), Cell.new(0,1,true), Cell.new(0,2,true), Cell.new(1,0,true), Cell.new(1,2,true), Cell.new(2,0,true), Cell.new(2,1,true), Cell.new(2,2,true)]
  end
end

