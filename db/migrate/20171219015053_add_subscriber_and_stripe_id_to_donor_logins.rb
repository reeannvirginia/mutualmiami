class AddSubscriberAndStripeIdToDonorLogins < ActiveRecord::Migration[5.1]
  def change
    add_column :donor_logins, :subscribed, :boolean
    add_column :donor_logins, :stripeid, :string
  end
end
