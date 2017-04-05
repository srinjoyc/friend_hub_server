class PersonalitiesController < ApplicationController
  before_action :set_personality, only: [:update, :destroy]

#Personality.create({user_id: 1, attr_a: 1.1, attr_b: 1.2, attr_c: 1.3, attr_d: 1.4, attr_e: 1.5})
  # GET /personalities
  def index
    @personalities = Personality.all

    render json: @personalities
  end

  # GET /personalities/1
  def show
    @personality = User.find(params[:id]).personality
    render json: @personality
  end

  # POST /personalities
  def create
    @personality = Personality.new(personality_params)

    if @personality.save
      render json: @personality, status: :created, location: @personality
    else
      render json: @personality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personalities/1
  def update
    if @personality.update(personality_params)
      render json: @personality
    else
      render json: @personality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personalities/1
  def destroy
    @personality.destroy
  end

  def match
    a = params[:user_id]
    user_one = User.find(a)
    users = User.all
    best_match_score = 0
    best_match_id = 0
    personality_one = Personality.where(user_id: user_one.id).last

    users.each do |user|
      personality_two = Personality.where(user_id: user.id).last

        match_a = (personality_one.attr_a - personality_two.attr_a).abs
        match_b = (personality_one.attr_b - personality_two.attr_b).abs
        match_c = (personality_one.attr_c - personality_two.attr_c).abs
        match_d = (personality_one.attr_d - personality_two.attr_d).abs
        match_e = (personality_one.attr_e - personality_two.attr_e).abs

      match_score = match_a + match_b + match_c + match_d + match_e
      
      if best_match_score < match_score
        best_match_score = match_score
        best_match_id = user.id
      end 

    end 


    render json: best_match_id.to_json

  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personality
      @personality = Personality.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def personality_params
      params.require(:personality).permit(:attr_a, :attr_b, :attr_c, :attr_d, :attr_e, :user_id)
    end
end
