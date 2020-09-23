require 'rails_helper'

RSpec.describe ArticleType, type: :model do
  describe '#test_method' do
    it "return 'test'" do
      object = described_class.new
      expect(object.test_method).to eq 'test'
    end
  end
end
