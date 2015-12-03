class PagesController < ApplicationController
  def index
    @list=List.all
  end
  def show
    @list= List.find(params[:id])
    @items=@list.items
  end
end
