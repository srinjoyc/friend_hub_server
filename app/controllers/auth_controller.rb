class AuthController < ApplicationController
 
  def login
    @user = User.where(email: params[:email]).first
    if @user.exists? && @user.password == params[:password]
      render json: @user 
    else
      render :json => "Invalid Credentials", :status => :unauthorized
    end 
  end

   

end
