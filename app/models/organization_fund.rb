class OrganizationFund < ApplicationRecord
  belongs_to :organization
  belongs_to :fund
end
