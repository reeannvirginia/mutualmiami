class Fund < ApplicationRecord
  has_many :donations
  has_many :donors, through: :donations
  has_many :organization_funds
  has_many :organizations, through: :organization_funds
end
