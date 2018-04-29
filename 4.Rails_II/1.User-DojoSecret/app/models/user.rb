class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, presence:true
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, format: { with:EMAIL_REGEX }, uniqueness: { case_sensitive:false}

  before_save :email_lowercase

  private
  def email_lowercase
  	self.email.downcase!
  end

end
