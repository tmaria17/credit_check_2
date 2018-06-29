require "./credit_check"
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test
  def test_split_card_number
    credit_check_1 = CreditCheck.new
    credit_check_1.split_card_number(54)
    assert_equal((['5','4']) , credit_check_1.split_card_number(54))
  end
  def test_valid_number?
    credit_check_9 = CreditCheck.new
    credit_check_9.valid_number?(5541808923795240)
    assert_equal (true) , credit_check_9.valid_number?(5541808923795240)
  end
  def test_validation_output
    credit_check_5 = CreditCheck.new
    credit_check_5.validation_output(5541808923795240)
    assert_equal "The number 5541808923795240 is valid!" , credit_check_5.validation_output(5541808923795240)
  end
#  def test_doubled
#   credit_check_2 = CreditCheck.new
#   credit_check_2.doubled([5,0])
#  assert_equal [10 , 0] , credit_check_2.doubled([5,0])
#  end
#def test_subtract_nine
#  credit_check_3 = CreditCheck.new
#  credit_check_3.subtract_nine([18,10])
#  assert_equal [9,1] , credit_check_3.subtract_nine([18,10])
#end
end
