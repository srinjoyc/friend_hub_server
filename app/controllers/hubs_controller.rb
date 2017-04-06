class HubsController < ApplicationController
  before_action :set_hub, only: [:show, :update, :destroy]

  # GET /hubs
  def index
    @hubs = Hub.all

    render json: @hubs
  end

  # GET /hubs/1
  def show
    render json: @hub
  end

  # POST /hubs
  def create
    @hub = Hub.new(hub_params)

    if @hub.save
      render json: @hub, status: :created, location: @hub
    else
      render json: @hub.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hubs/1
  def update
    if @hub.update(hub_params)
      render json: @hub
    else
      render json: @hub.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hubs/1
  def destroy
    @hub.destroy
  end

  def getHistory
    history = History.where(hub_id: params[:hub_id])
    total_a = 0
    total_b = 0
    total_c = 0
    total_d = 0

    total_hash = {}

    history.each do |item|
      unless item.nil? 
        user = User.find(item.user_id)
        total_a += user.personality.attr_a
        total_b += user.personality.attr_b
        total_c += user.personality.attr_c
        total_d += user.personality.attr_d
        total_e += user.personality.attr_e
      end 
    end 

    total_hash["attr_a"] = total_a
    total_hash["attr_b"] = total_b
    total_hash["attr_c"] = total_c
    total_hash["attr_d"] = total_d
    total_hash["attr_e"] = total_e

    render json: total_hash.to_json
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hub
      @hub = Hub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hub_params
      params.require(:hub).permit(:name, :latitude, :longitude, :description, :location, :image_url, :type)
    end
end
