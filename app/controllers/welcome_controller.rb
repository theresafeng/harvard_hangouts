class WelcomeController < ApplicationController
  def index
    @posts = Post.order("start_date_time DESC").page(params[:page]).per(2)
  end
end
