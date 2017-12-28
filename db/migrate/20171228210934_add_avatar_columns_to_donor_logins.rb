class AddAvatarColumnsToDonorLogins < ActiveRecord::Migration[5.1]
  def up
    add_attachment :donor_logins, :avatar
  end

  def down
    remove_attachment :donor_logins, :avatar
  end
end
