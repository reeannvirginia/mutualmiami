class AddDonorLoginsToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :donor_logins, foreign_key: true
  end
end
