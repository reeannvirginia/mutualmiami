class ChangeForeignKeyForDonations < ActiveRecord::Migration[5.1]
  def change
    rename_column :donations, :donor_logins_id, :donor_login_id
  end
end
