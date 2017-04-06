# frozen_string_literal: true
class OcrReader
  attr_reader :file_path, :result
  def initialize(file_path)
    @file_path = file_path
    @result = nil
  end

  def process
  end
end
