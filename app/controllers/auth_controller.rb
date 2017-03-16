class AuthController < ApplicationController
 
  def login

    @user = User.where(email: params[:email]).first
    if @user.blank?
      render :json => {
        error: "No such user; check the submitted email address",
        status: 400
      }, status: 400
      return
    elsif @user.password == params[:password]
      render json: @user 
      return
    else
      render :json => {
        error: "No such user; check the submitted email address",
        status: 400
      }, status: 400
    end 

  end

   

end
