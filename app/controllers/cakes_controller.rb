class CakesController < ApplicationController
  def index
    @cake = Cake.all
  end

  def new
    @cake = Cake.new
  end

  def create
    @cake = Cake.create(params[:cake_params])
    redirect_to root_path
  end

  private

  def cake_params
    params.require(:cake).permit(:name, :restaurant, :comments)
  end
end