class User < ActiveRecord::Base
  has_secure_password

  has_many :sales
  validates :email, presence: true,
            uniqueness: true
  enum role: %w(default admin)


end
