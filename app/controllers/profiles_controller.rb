class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
  end
  
  def browse
    if params[:search].present?
      @users = User.near(params[:search], 25, :order => :distance).paginate(:page => params[:page])
    else
      @users = User.paginate(:page => params[:page])
    end
  end
end