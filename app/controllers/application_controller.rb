class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  private

  def current_company
    puts "hi"
    @current_company ||= current_user.company if user_signed_in?
  end
  helper_method :current_company
end
