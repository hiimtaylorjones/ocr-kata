# frozen_string_literal: true
class OcrReader
  attr_reader :file_path, :result
  def initialize(file_path)
    @file_path = file_path
    @result = nil
  end

  def process
    # Found a nifty answer here I want to mess with - http://stackoverflow.com/a/17415655
    outcome_array = []
    File.foreach(@file_path).with_index do |line, line_num|
      puts "#{line_num}: #{line}"
    end
  end
end
