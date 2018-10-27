class PagesController < ApplicationController
  def index

    @user = current_user
    @washer = current_washer
  end
end
