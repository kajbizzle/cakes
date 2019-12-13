class CakesController < ApplicationController
  def index
    @cake = Cake.all
  end

  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.new(cake_params)
    @cake.save
    redirect_to cakes_path(@cake)
  end

  def show
  end

  private

  def cake_params
    params.require(:cake).permit(:name, :restaurant, :comments)
  end
end