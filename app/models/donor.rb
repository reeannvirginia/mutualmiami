class Donor < ApplicationRecord
  has_many :donations
  has_many :funds, through: :donations
end
