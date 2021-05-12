class User < ApplicationRecord

  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  validates_format_of :email, :with => /@/, uniqueness: true

end
