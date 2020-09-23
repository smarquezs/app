require 'rails_helper'

RSpec.describe ArticleType, type: :model do
  describe '#test_method' do
    it "return 'test'" do
      expect(described_class.new.test_method).to eq 'test'
    end
  end

  describe '#test_method_two' do
    it "return 'test2'" do
      expect(described_class.new.test_method_two).to eq 'test2'
    end
  end
end
