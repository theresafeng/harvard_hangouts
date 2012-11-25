class HangoutsController < ApplicationController
  def new
    @hangout = Hangout.new
  end
  
  def create
    Hangout.create(params[:hangout])
    redirect_to root_path
  end
  
end
