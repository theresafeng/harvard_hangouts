class WelcomeController < ApplicationController
  def index
    @hangouts = Hangout.all
  end
end
