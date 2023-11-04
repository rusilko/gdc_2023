require 'minitest/autorun'
require 'minitest/pride'
require 'set'

class Cell
  def initialize
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
end

