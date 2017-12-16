class Organization < ApplicationRecord
  has_many :organization_funds
  has_many :funds, through: :organization_funds

  validates :name, :presence => true
end
