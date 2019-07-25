class Tenant < ApplicationRecord
  after_create :after_create

  def after_create
    Apartment::Tenant.create(self.database)
  end
end
