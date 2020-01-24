class User < ApplicationRecord
  has_secure_password
  after_initialize :ensure_token
  validates :username, presence: true, uniqueness: true 
  validates :email, presence: true, uniqueness: true
end