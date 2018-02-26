require 'rails_helper'

RSpec.describe FoodItem, type: :model do
  describe "Creation" do
    before do
      @food_item = FactoryBot.create(:food_item)
    end

    it 'can be created' do
      expect(@food_item).to be_valid
    end

    it "can not be created without name and price, category and photo" do
      @food_item.name = nil
      @food_item.price = nil
      @food_item.category = nil
      @food_item.photo = nil
      expect(@food_item).to_not be_valid
    end

  end
end
