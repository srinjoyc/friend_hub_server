class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # curl -i -H "Accept: application/json" -H "Content-Type: application/json" localhost:3000/users
  def index
    @users = User.all
    puts JSON.pretty_generate(@users.as_json)
    render json: @users
  end

  # GET /users/1
  # curl -i -H "Accept: application/json" -H "Content-Type: application/json" localhost:3000/users/1
  def show
    puts JSON.pretty_generate(@user.as_json)
    render json: @user
  end

  # POST /users
  #curl -H "Content-Type: application/@gmail.com","password":"123456", "bio": "This is an example bio"}' http://localhost:3000/users
  def create
    @user = User.new(user_params)

    if @user.save
      puts JSON.pretty_generate(@user.as_json)
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      puts JSON.pretty_generate(@user.as_json)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  def getHistory

  end 

  def checkin
    user = User.find(params[:user_id])
    hub = Hub.find(params[:hub_id])

    h = History.new(user_id: user.id, hub_id: hub.id, is_active: true)
    h.save!

    puts "/CHECKIN user_id -------------------- #{user.id}"
    render json: @user
  end 

  def checkout
    user = User.find(params[:user_id])
    hist = History.where(user_id: user.id).where(is_active: true).first
    hist.is_active = false
    hist.save!
    puts "/CHECKOUT user_id -------------------- #{user.id}"
    render json: "200"
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :bio)
    end
end
