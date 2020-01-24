class User < ApplicationRecord
  has_secure_password
  after_initialize :ensure_token
  validates :username, presence: true, uniqueness: true 
  validates :email, presence: true, uniqueness: true

  def reset_token
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end
  
  def ensure_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end
end