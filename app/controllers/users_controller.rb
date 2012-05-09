#class UsersController < ApplicationController
class UsersController < Devise::RegistrationsController
  def new
    @user = User.new
    render :template => "users/registrations/new"
  end
  
  # def create
    # @user = User.new(params[:user])
    # if @user.save
      # redirect_to root_url, :notice => "Signed up!"
    # else
      # render "new"
    # end
  # end
#   
  # def show
    # @user = User.find(params[:id])
  # end
end
