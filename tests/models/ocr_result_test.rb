require './rspec_manifest.rb'

RSpec.describe OcrResult do
  it 'should contain an array of 9 numbers' do
    result = OcrResult.new([[1], [2], [3], [4], [5], [6], [7], [8], [9]])
    expect(result.numbers.length).to eq(9)
  end

  context 'with a valid input' do
    it 'should be able to validate its input array' do
      # In here, we assume that a valid input only consists of an array
      # of numbers
      result = OcrResult.new([[1], [2], [3], [4], [5], [6], [7], [8], [9]])
      validation = result.validate
      expect(validation).to eq(true)
    end

    it 'should have a method that outputs all 9 numbers into a string' do
      result = OcrResult.new([[1], [2], [3], [4], [5], [6], [7], [8], [9]])
      output = result.to_string
      expect(output).to eq('123456789')
    end
  end
end
