class User < ActiveRecord::Base
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret

  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, presence:true
  validates :email, format: { with:EMAIL_REGEX }, uniqueness: { case_sensitive:false}

  before_save :email_lowercase

  private
  def email_lowercase
  	self.email.downcase!
  end

end
