class DonorLogin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise   :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable
   has_many :donations
   has_many :funds, through: :donations
   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
