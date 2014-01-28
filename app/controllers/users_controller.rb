class UsersController < ApplicationController
  before_action :signed_in_user, only: [:show]
  before_action :correct_user,   only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def index
    @users = User.all
  end

private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end