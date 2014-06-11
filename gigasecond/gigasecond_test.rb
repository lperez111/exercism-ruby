require 'minitest/autorun'
require 'date'
require 'time'
require_relative 'gigasecond'

class GigasecondTest < MiniTest::Unit::TestCase

  def test_1
    gs = Gigasecond.new(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs.date
  end

  def test_2
    # skip
    gs = Gigasecond.new(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs.date
  end

  def test_3
    # skip
    gs = Gigasecond.new(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs.date
  end

  def test_yourself
    # skip
    gs = Gigasecond.new(Date.new(1987, 11, 28))
    assert_equal Date.new(2019, 8, 6), gs.date
  end

end
