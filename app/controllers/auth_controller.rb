class AuthController < ApplicationController
 
  def login
    
    @user = User.where(email: params[:email]).first
    if @user.blank?
      render :json => "No user found" 
      return
    elsif @user.password == params[:password]
      render json: @user 
      return
    else
      render :json => "Invalid Credentials", :status => :unauthorized
    end 

  end

   

end
