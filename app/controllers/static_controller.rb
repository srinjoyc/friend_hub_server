require 'rails/application_controller'
class StaticController <  Rails::ApplicationController
  def home
    @user = User.last
    render :file => Rails.root.join('public', 'home.html')
  end 
end
