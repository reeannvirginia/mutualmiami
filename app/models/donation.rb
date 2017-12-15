class Donation < ApplicationRecord
  belongs_to :donor
  belongs_to :fund
end
