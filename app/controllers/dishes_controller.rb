class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new
    @dish.restaurant_id = params[:restaurant_id]
    @dish.name = params[:name]
    @dish.desc = params[:desc]

    if @dish.save
      redirect_to dishes_url, :notice => "Dish created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])

    @dish.restaurant_id = params[:restaurant_id]
    @dish.name = params[:name]
    @dish.desc = params[:desc]

    if @dish.save
      redirect_to dish_url(@dish.id), :notice => "Dish updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])

    @dish.destroy

    redirect_to dishes_url, :notice => "Dish deleted."
  end
end
