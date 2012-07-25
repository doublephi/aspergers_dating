class HomeController < ApplicationController
  def index
     @user = User.new
     @new_users = User.find(:all, :order => "id desc", :limit => 5).reverse
  end
end
