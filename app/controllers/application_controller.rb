class ApplicationController < ActionController::Base

  before_action :set_banner

  protected

  def set_banner
    @banner = Admin::Banner.first
  end

end
