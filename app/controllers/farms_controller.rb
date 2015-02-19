class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new
    @farm.name = params[:name]
    @farm.address = params[:address]
    @farm.website_url = params[:website_url]

    if @farm.save
      redirect_to farms_url, :notice => "Farm created successfully."
    else
      render 'new'
    end
  end

  def edit
    @farm = Farm.find(params[:id])
  end

  def update
    @farm = Farm.find(params[:id])

    @farm.name = params[:name]
    @farm.address = params[:address]
    @farm.website_url = params[:website_url]

    if @farm.save
      redirect_to farm_url(@farm.id), :notice => "Farm updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @farm = Farm.find(params[:id])

    @farm.destroy

    redirect_to farms_url, :notice => "Farm deleted."
  end
end
