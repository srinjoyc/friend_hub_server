class ApplicationController < ActionController::API

  def get_models
    @user = User.new
    @hub = Hub.new
   #render json: @user.to_json
    render json: {user: @user.as_json, hub: @hub.as_json}
  end

  def get_user_routes
    test_routes = {}
    Rails.application.routes.routes.each do |route|
      verb = route.verb.to_s
      route = route.path.spec.to_s
      test_routes[verb] = route if route.starts_with?('/user') && route != nil
    end
    render json: test_routes.as_json
  end  

  def get_hub_routes
    test_routes = {}
    Rails.application.routes.routes.each do |route|
      verb = route.verb.to_s
      route = route.path.spec.to_s
      test_routes[verb] = route if route.starts_with?('/hub') && route != nil
    end
    render json: test_routes.as_json
  end

end
