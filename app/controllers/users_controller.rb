class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    redirect_to :back, :alert => "Access Denied!" unless @user == current_user
  end

end
