class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.consumer_id = params[:consumer_id]
    @favorite.farm_id = params[:farm_id]

    if @favorite.save
      redirect_to favorites_url, :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.consumer_id = params[:consumer_id]
    @favorite.farm_id = params[:farm_id]

    if @favorite.save
      redirect_to favorite_url(@favorite.id), :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to favorites_url, :notice => "Favorite deleted."
  end
end
