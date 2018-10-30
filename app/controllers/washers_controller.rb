class WashersController < ApplicationController
  def show
    @washer = current_washer
  end
end
