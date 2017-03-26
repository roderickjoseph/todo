class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(place_params)
    redirect_to root_path
  end


  private

  def place_params
    params.require(:item).permit(:name, :description, :date)
  end
end
