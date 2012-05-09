class Users::SessionsController < Devise::SessionsController
  def new
    puts "I like rape!"
  end
#   
  # def create
    # user = User.authenticate(params[:email], params[:password])
    # #if a user is found and returned...
    # if user
      # session[:user_id] = user.id
      # redirect_to root_url, :notice => "Logged in!"
    # else
      # flash.now.alert = "Invalid email or password."
      # render "new"
    # end
  # end
#   
  # def destroy
    # session[:user_id] = nil
    # redirect_to root_url, :notice => "Logged out!"
  # end
end
