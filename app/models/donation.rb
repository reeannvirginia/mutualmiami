class Donation < ApplicationRecord
  belongs_to :donor_login
  belongs_to :fund

  validates :amount, presence: true
  validates_numericality_of :amount, :on => :create
end
