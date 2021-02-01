require 'rails_helper'

RSpec.describe Review, type: :model do
   before do
    @review = build(:review)
  end
  describe 'バリデーションのテスト' do
    context 'scoreカラム' do
      it 'scoreが空だとNG' do
        @review.score = ''
        expect(@review.valid?).to eq(false)
      end
    end

    context 'contentカラム' do
      it 'contentが空だとNG' do
        @review.content = ''
        expect(@review.valid?).to eq(false)
      end
    end
  end
end