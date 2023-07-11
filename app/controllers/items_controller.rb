class ItemsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:order_id])

    @item = Item.new
  end
end
