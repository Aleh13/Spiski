class User < ApplicationRecord


  has_secure_password

  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  validates_format_of :email, :with => /@/
  validates :email, uniqueness: true

end
