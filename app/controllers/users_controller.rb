class UsersController < Devise::RegistrationsController
  def new
    @user = User.new
    render :template => "users/registrations/new"
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      if @user.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_in(:user, @user)
        respond_with @user, :location => after_sign_up_path_for(@user)
      else
        set_flash_message :notice, :"signed_up_but#{@user.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with @user, :location => after_inactive_sign_up_path_for(@user)
      end
    else
      clean_up_passwords @user
      render :template => "users/registrations/new"
    end
  end
  
  # def show
    # @user = User.find(params[:id])
  # end
end
