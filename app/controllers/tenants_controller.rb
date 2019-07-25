class TenantsController < ApplicationController
  def index
    @tenant = Tenant.new
  end

  def create
    @tenant = Tenant.find_or_initialize_by tenant_params

    if
      @tenant.save
      session[:tenant] = @tenant.database
      redirect_to tenants_path
    else
      redirect_to tenants_path, notice: 'Cannot select tenant'
    end
  end

  private

  def tenant_params
    params.require(:tenant).permit(:database)
  end
end
