require "./credit_check"
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test
  def split_card_number
    credit_check_1 = CreditCheck.new
    credit_check_1.split_card_number("6011797668868728")
    assert_equal["6","0","1","1","7","9","7","6","6","8","8","6","8","7","2","8"] = credit_check.split("6011797668868728")
  end
  def doubled
    credit_check_2 =CreditCheck.new
    credit_check_2.doubled("6011797668868728")
    assert_equal[] = 


end
