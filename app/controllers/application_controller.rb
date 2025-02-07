class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def current_user
    @current_user ||=
      begin
        return nil unless session[:user_id]

        User.find(session[:user_id])
      end
  end
end
