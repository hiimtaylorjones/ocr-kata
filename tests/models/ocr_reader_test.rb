require './rspec_manifest.rb'

RSpec.describe OcrReader do
  context 'with a valid input file' do
    it 'should have a method to access file path' do
      reader = OcrReader.new('../../stories/1.txt')
      expect(reader.file_path).to eq('../../stories/1.txt')
    end

    it 'should an initial result of nil' do
      reader = OcrReader.new('../../stories/1.txt')
      expect(reader.result).to eq(nil)
    end

    it 'should be able to take in a file line and return an OcrResult' do
      reader = OcrReader.new('../../stories/1.txt')
      ocr_result = OcrResult.new([1, 2, 3, 4, 5, 6, 7, 8, 9])
      processed = reader.process
      expect(processed).to eq(true)
      expect(reader.result).to eq(ocr_result)
    end
  end
end
