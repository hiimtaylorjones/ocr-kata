# frozen_string_literal: true
class OcrResult
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def validate
    @numbers.map { |number| return false if number.class != Fixnum }
    true
  end

  def to_string
    validate
    @numbers.join(',').delete(',')
  end
end
