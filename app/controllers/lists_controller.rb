class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @lists = List.new(list_params)
    @lists.save
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
