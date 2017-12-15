class Fund < ApplicationRecord
  has_many :donations
  has_many :donors, through: :donations
  has_and_belongs_to_many :organizations
end
