class OrdersController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @orders = Order.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.build(order_params)
    if @order.save
      redirect_to restaurant_orders_path(@restaurant, @order)
    else
      render 'new'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = @restaurant.orders.find(params[:id])
    @order.destroy

    redirect_to restaurant_orders_path(@restaurant)
  end

  private

  def order_params
    params.require(:order).permit(:date, :sub_total, :taxes, :total)
  end
end
