require 'spec_helper'

describe UcStudentNumber do
  it 'has a version number' do
    expect(UcStudentNumber::VERSION).not_to be nil
  end

  it 'validates a student number as integer' do
    student_numbers = [10_637_419, 8_630_739]
    student_numbers.each do |student_number|
      expect(UcStudentNumber.validate(student_number)).to be true
    end
  end

  it 'validates a student number as string' do
    student_numbers = %w(10637419 08630739)
    student_numbers.each do |student_number|
      expect(UcStudentNumber.validate(student_number)).to be true
    end
  end

  it 'validates a student number ending with J' do
    student_numbers = %w(1263476J)
    student_numbers.each do |student_number|
      expect(UcStudentNumber.validate(student_number)).to be true
    end
  end

  it 'doesn\'t validate a short student number integer' do
    student_number = 10_637
    expect(UcStudentNumber.validate(student_number)).to be false
  end

  it 'doesn\'t validate a short student number string' do
    student_number = '10637'
    expect(UcStudentNumber.validate(student_number)).to be false
  end

  it 'doesn\'t validate a nil student number' do
    student_number = nil
    expect(UcStudentNumber.validate(student_number)).to be false
  end

  it 'doesn\'t validate a boolean student number' do
    student_numbers = [true, false]
    student_numbers.each do |student_number|
      expect(UcStudentNumber.validate(student_number)).to be false
    end
  end
end
