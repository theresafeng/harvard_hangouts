class HangoutsController < ApplicationController
  def new
    @hangout = Hangout.new
  end
  
  def create
    Hangout.create(params[:hangout])
    redirect_to root_path
  end
  
  def edit
    @hangout = Hangout.find(params[:hangout])
  end
  
end
