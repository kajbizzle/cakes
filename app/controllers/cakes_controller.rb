class CakesController < ApplicationController
  def index
    @cake = Cake.order("Random()").first
  end

  def new
    @cake = Cake.new
  end

  def create
    Cake.create(cake_params)
  end

  private

  def cake_params
    params.require(:cake).permit(:name, :restaurant, :comments)
    redirect_to root_path
  end
end