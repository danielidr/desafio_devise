class DashboardController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.all.each do |user|
      user.admin = params["user_#{user.id}"]
      user.save
    end
    redirect_to dashboard_index_path
  end
end
