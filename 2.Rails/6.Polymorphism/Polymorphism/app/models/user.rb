class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, presence:true
  validates :first_name, :last_name, length:{minimum:2}
  validates :email, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  has_many :messages
  has_many :posts
  has_many :owners
  has_many :blogs, through: :owners
  has_many :comments, as: :commentable
end
