class User < ActiveRecord::Base
  has_secure_password

  has_many :photos
  has_many :chat_threads

  validates :password, presence: true, length: { minimum: 6 }

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end
end
