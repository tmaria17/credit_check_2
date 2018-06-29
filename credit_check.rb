class CreditCheck

  def split_card_number(card_number)
    split_number = card_number.to_s.chars
  end
#puts card_number

 #double_every_other= []
 #greater_than_nine = []

 def doubled(split_number)
    double_every_other=[]
    split_card_number(split_number).each_with_index do |number, index|
      if index.even?
       double_every_other << number.to_i * 2
      else
       double_every_other <<  number.to_i
      end
    end
   double_every_other
 end

  def subtract_nine(number)
    greater_than_nine = []
  doubled(number).each do |number|
    if number.to_i > 9
      greater_than_nine  << number.to_i - 9
    else
      greater_than_nine << number.to_i
    end
  end
  greater_than_nine
end

def valid_number?(number)
  if subtract_nine(number).sum%10==0
    true
  else
    false
  end
end
  def validation_output(number)
    if valid_number?(number)== true
      puts "The number #{number} is valid!"
    else
      puts "The number #{number} is invalid!"
    end
  end
end
credit_check = CreditCheck.new
puts credit_check.valid_number?(5541808923795240)
puts credit_check.valid_number?(5541801923795240)
credit_check.validation_output(5541808923795240)
credit_check.validation_output(5541801923795240)
