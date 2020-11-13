require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @room = FactoryBot.build(:room)
    end

    it "nameの値が存在すれば登録できること" do
      expect(@room).to be_varid 
      @room.name.be_varid
    end

    it "nameが空では登録できないこと" do
      @room.name = nil
      @room.varid?
      expect(@room.errors.full_messages).to include("Name can't be blank")
    end
  end
end