class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update 
    @restaurant.update(restaurant_params)
    @restaurant.save 
    redirect_to restaurant_path
  end

  private 
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :pizza_id)
  end

end
