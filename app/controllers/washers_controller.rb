class WashersController < ApplicationController

  def index
    @washer = current_washer
  end

  def show
    @washer = current_washer
  end
end
