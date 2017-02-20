class ApplicationController < ActionController::
  include Pundit
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || recipes_path
  end

end
