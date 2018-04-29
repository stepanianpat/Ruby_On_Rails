class Blog < ActiveRecord::Base
  validates :name, :description, presence:true
  validates :name, length: {minimum:2}

  has_many :posts
  has_many :owners
  has_many :users, through: :owners
  has_many :comments, as: :commentable
end
