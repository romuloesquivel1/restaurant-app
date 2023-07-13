class ItemsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:order_id])

    @item = Item.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:order_id])
    @item = @order.items.build(item_params)
    dish_id = params[:item][:dish_id]
    @selected_dish = @restaurant.dishes.find_by(id: dish_id)

    if @item.save
      redirect_to restaurant_order_path(@restaurant, @order)
    else
      render 'new'
    end
  end

  def item_params
    params.require(:item).permit(:price, :order_id, :dish_id)
  end
end
