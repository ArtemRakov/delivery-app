class FoodItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index

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
