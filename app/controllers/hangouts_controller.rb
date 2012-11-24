class HangoutsController < ApplicationController
  def new
    @hangout = Hangout.new
  end
end
