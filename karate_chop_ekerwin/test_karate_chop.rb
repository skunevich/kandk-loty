require 'karate_chop'
require 'test/unit'

class KarateChopTest < Test::Unit::TestCase
  def test_chop
    @karate_chop = KarateChop.new

    assert_equal(-1, @karate_chop.chop(3, []))
    assert_equal(-1, @karate_chop.chop(3, [1]))
    assert_equal(0,  @karate_chop.chop(1, [1]))
    assert_equal(0,  @karate_chop.chop(1, [1, 3, 5]))
    assert_equal(1,  @karate_chop.chop(3, [1, 3, 5]))
    assert_equal(2,  @karate_chop.chop(5, [1, 3, 5]))
    assert_equal(-1, @karate_chop.chop(0, [1, 3, 5]))
    assert_equal(-1, @karate_chop.chop(2, [1, 3, 5]))
    assert_equal(-1, @karate_chop.chop(4, [1, 3, 5]))
    assert_equal(-1, @karate_chop.chop(6, [1, 3, 5]))
    assert_equal(0,  @karate_chop.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  @karate_chop.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  @karate_chop.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  @karate_chop.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, @karate_chop.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, @karate_chop.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, @karate_chop.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, @karate_chop.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, @karate_chop.chop(8, [1, 3, 5, 7]))
  end
end
