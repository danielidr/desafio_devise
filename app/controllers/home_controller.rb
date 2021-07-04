class HomeController < ApplicationController
  def index
    @stories = Story.where(user_id: current_user.id)
  end
end
