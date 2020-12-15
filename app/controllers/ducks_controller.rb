class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.create(params.require(:duck).permit(:name, :description, :student_id))
    redirect_to ducks_path(@duck)
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(params.require(:duck).permit(:name, :mod, :student_id))
    redirect_to ducks_path(@duck)
  end


end
