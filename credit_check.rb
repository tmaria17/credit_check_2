class CreditCheck
# Create new class called credit CreditChec
#Create method that splits cc number into an array
  def split_card_number(card_number)
    split_number = card_number.to_s.chars
  end
#create method that doubles the number if index is even and shovels into a new array
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
#This method will subtract nine from numbers larger than nine and will shovel those numbers into a new array
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
#This method checks to see if the number is valid by using the modulo of the last array's sum will return true or false
def valid_number?(number)
  if subtract_nine(number).sum%10==0
    true
  else
    false
  end
end
#this method will return a string stating if number is valid or invalid.
  def validation_output(number)
    if valid_number?(number)== true
      "The number #{number} is valid!"
    else
      "The number #{number} is invalid!"
    end
  end
end
credit_check = CreditCheck.new
#p credit_check.doubled(6011797668868728)
#p credit_check.subtract_nine(6011797668868728)

#puts credit_check.valid_number?(6011797668868728)
#puts credit_check.valid_number?(5541801923795240)
#puts credit_check.validation_output(5541808923795240)
#puts credit_check.validation_output(5541801923795240)
