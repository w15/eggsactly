class ConsumersController < ApplicationController
  def index
    @consumers = Consumer.all
  end

  def show
    @consumer = Consumer.find(params[:id])
  end

  def new
    @consumer = Consumer.new
  end

  def create
    @consumer = Consumer.new
    @consumer.email = params[:email]
    @consumer.sex = params[:sex]
    @consumer.year_of_birth = params[:year_of_birth]
    @consumer.zip = params[:zip]

    if @consumer.save
      redirect_to consumers_url, :notice => "Consumer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @consumer = Consumer.find(params[:id])
  end

  def update
    @consumer = Consumer.find(params[:id])

    @consumer.email = params[:email]
    @consumer.sex = params[:sex]
    @consumer.year_of_birth = params[:year_of_birth]
    @consumer.zip = params[:zip]

    if @consumer.save
      redirect_to consumer_url(@consumer.id), :notice => "Consumer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @consumer = Consumer.find(params[:id])

    @consumer.destroy

    redirect_to consumers_url, :notice => "Consumer deleted."
  end
end
