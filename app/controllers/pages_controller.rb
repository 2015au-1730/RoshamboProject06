class PagesController < ApplicationController
  def index
    @list=List.all
  end
end
