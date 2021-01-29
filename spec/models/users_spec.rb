require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do 
    @user = build(:user)
  end

  describe 'バリデーション' do
    context 'nameカラム' do
      it 'nameが空だとNG' do
        @user.name = ''
        expect(@user.valid?).to eq(false)
      end
    end
    
    context 'emailカラム' do
      it 'emailが空だとNG' do
        @user.email = ''
        expect(@user.valid?).to eq(false)
      end
    end
  end
end