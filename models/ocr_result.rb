# frozen_string_literal: true
class OcrResult
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def validate
    true
  end

  def to_string
    validate
    @numbers.join(',').delete(',')
  end
end
