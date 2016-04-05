require 'uc_student_number/version'

# UcStundentMo dule
module UcStudentNumber
  def self.validate(number)
    return false if !number || number.to_s.length < 7
    number = number.to_s.strip
    given_digits = number.reverse[1..-1].split('').map(&:to_i)
    given_verification = number.reverse[0].upcase
    get_verification_digit(given_digits) == given_verification
  end

  def self.get_verification_digit(digits)
    counter = 2
    sum = 0
    digits.each do |digit|
      sum += (digit * counter)
      counter += 1
      counter = counter > 8 ? 2 : counter
    end

    ((11 - sum) % 11 != 10) ? ((11 - sum) % 11).to_s : 'J'
  end
  private_class_method :get_verification_digit
end
