class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_tenant
    @current_tenant ||= Apartment::Tenant.current
  end
  helper_method :current_tenant
end
