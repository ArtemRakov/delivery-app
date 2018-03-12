class FoodItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    food_items = FoodItem.all
    @sandwich = food_items.where(category: 'sandwich')
    @rolls = food_items.where(category: 'roll')
    @fries = food_items.where(category: 'fries')
    @starters = food_items.where(category: 'starters')
    @drinks = food_items.where(category: 'drinks')
  end

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
