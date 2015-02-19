class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.email = params[:email]
    @restaurant.name = params[:name]
    @restaurant.address = params[:address]
    @restaurant.website_url = params[:website_url]
    @restaurant.farm_id = params[:farm_id]

    if @restaurant.save
      redirect_to restaurants_url, :notice => "Restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.email = params[:email]
    @restaurant.name = params[:name]
    @restaurant.address = params[:address]
    @restaurant.website_url = params[:website_url]
    @restaurant.farm_id = params[:farm_id]

    if @restaurant.save
      redirect_to restaurant_url(@restaurant.id), :notice => "Restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to restaurants_url, :notice => "Restaurant deleted."
  end
end
