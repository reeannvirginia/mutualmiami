class Donation < ApplicationRecord
  belongs_to :donor_login
  belongs_to :fund
end
