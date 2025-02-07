class HomeController < ApplicationController
  before_action :set_current_user, only: :dashboard

  def welcome 
  end

  def dashboard
  end

  private

  def set_current_user
    current_user
  end
end
