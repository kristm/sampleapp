class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authenticate_user
    unless current_user
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||=
      begin
        return nil unless session[:user_id]

        User.find(session[:user_id])
      end
  end
end
