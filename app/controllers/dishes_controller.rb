class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.build(dish_params)

    @dish.photo.attach(params[:dish][:photo])
    if @dish.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'dishes/new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = @restaurant.dishes.find(params[:id])

    if @dish.update(dish_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    redirect_to dishes_path
  end

  private

  def dish_params
    params.require(:dish).permit(:dish_group, :name, :description, :price, :photo)
  end
end
