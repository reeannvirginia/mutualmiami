class OrganizationFund < ApplicationRecord
  belongs_to :organization
  belongs_to :fund

  def organization_name
    self.organization.name
  end
end
