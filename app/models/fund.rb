class Fund < ApplicationRecord
  has_many :donations
  has_many :donors, through: :donations
  has_many :organization_funds, dependent: :destroy
  has_many :organizations, through: :organization_funds

end
