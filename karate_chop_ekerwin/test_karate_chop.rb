require 'karate_chop_one'
require 'karate_chop_two'
require 'karate_chop_three'
require 'karate_chop_four'
require 'karate_chop_five'
require 'test/unit'

class KarateChopTest < Test::Unit::TestCase
  def test_chop_1
    do_chop KarateChopOne.new
  end

  def test_chop_2
    do_chop KarateChopTwo.new
  end

# def test_chop_3
#   do_chop KarateChopThree.new
# end
#
# def test_chop_4
#   do_chop KarateChopFour.new
# end
#
# def test_chop_5
#   do_chop KarateChopFive.new
# end

  def do_chop(karate_chop)
    assert_equal(-1, karate_chop.chop(3, []))
    assert_equal(-1, karate_chop.chop(3, [1]))
    assert_equal(0,  karate_chop.chop(1, [1]))
    assert_equal(0,  karate_chop.chop(1, [1, 3, 5]))
    assert_equal(1,  karate_chop.chop(3, [1, 3, 5]))
    assert_equal(2,  karate_chop.chop(5, [1, 3, 5]))
    assert_equal(-1, karate_chop.chop(0, [1, 3, 5]))
    assert_equal(-1, karate_chop.chop(2, [1, 3, 5]))
    assert_equal(-1, karate_chop.chop(4, [1, 3, 5]))
    assert_equal(-1, karate_chop.chop(6, [1, 3, 5]))
    assert_equal(0,  karate_chop.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  karate_chop.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  karate_chop.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  karate_chop.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, karate_chop.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, karate_chop.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, karate_chop.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, karate_chop.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, karate_chop.chop(8, [1, 3, 5, 7]))
  end
end
