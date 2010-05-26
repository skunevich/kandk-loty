    require 'test/unit'
	require 'KarateChop'
	require 'KarateChop2'

    class KarateChop_Test < Test::Unit::TestCase
      # def setup
      # end

      # def teardown
      # end
	  
	  def test_KarateChop
		chop_chop KarateChop.new
	  end
	  
	  def test_KarateChop2
		chop_chop KarateChop2.new
	  end
	  
	  def chop_chop(chopper)
		assert_equal(-1, chopper.chop(3, []))
		assert_equal(-1, chopper.chop(3, [1]))
		assert_equal(0,  chopper.chop(1, [1]))
		
		assert_equal(0,  chopper.chop(1, [1, 3, 5]))
		assert_equal(1,  chopper.chop(3, [1, 3, 5]))
		assert_equal(2,  chopper.chop(5, [1, 3, 5]))
		assert_equal(-1, chopper.chop(0, [1, 3, 5]))
		assert_equal(-1, chopper.chop(2, [1, 3, 5]))
		assert_equal(-1, chopper.chop(4, [1, 3, 5]))
		assert_equal(-1, chopper.chop(6, [1, 3, 5]))
		
		assert_equal(0,  chopper.chop(1, [1, 3, 5, 7]))
		assert_equal(1,  chopper.chop(3, [1, 3, 5, 7]))
		assert_equal(2,  chopper.chop(5, [1, 3, 5, 7]))
		assert_equal(3,  chopper.chop(7, [1, 3, 5, 7]))
		assert_equal(-1, chopper.chop(0, [1, 3, 5, 7]))
		assert_equal(-1, chopper.chop(2, [1, 3, 5, 7]))
		assert_equal(-1, chopper.chop(4, [1, 3, 5, 7]))
		assert_equal(-1, chopper.chop(6, [1, 3, 5, 7]))
		assert_equal(-1, chopper.chop(8, [1, 3, 5, 7]))
	
      end
    end