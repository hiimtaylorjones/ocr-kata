# frozen_string_literal: true
class OcrReader
  attr_reader :data
  def initialize(file_path)
    @data = File.read(file_path)
  end

  def process
  end
end
