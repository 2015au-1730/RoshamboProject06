class DashboardController < ApplicationController
  def index
    @dashboard = User.all
  end

  def inbox
    render :inbox
  end


  def settings

  end

  def stats

  end


end