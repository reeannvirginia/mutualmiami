class Donor < ApplicationRecord
  has_many :funds
  has_many :donations
end
