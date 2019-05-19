class MinutesController < ApplicationController

  def index
    @minutes = Minute.all
  end

  def new
    @minute = Minute.new
  end

  def create
    @minute = Minute.new(minute_params)
    @minute.save
    redirect_to @minute
  end

  def show
    @minute = Minute.find(params[:id])
  end

  def edit
    @minute = Minute.find(params[:id])
  end

  def update
    @minute = Minute.find(params[:id])
    @minute.update(minute_params)
    redirect_to @minute
  end

  def destroy
    @minute = Minute.find(params[:id])
    @minute.destroy
    redirect_to minutes_path
  end

  private

  def minute_params
    params.require(:minute).permit(:title, :name, :post_date, :description)
  end
  
end
