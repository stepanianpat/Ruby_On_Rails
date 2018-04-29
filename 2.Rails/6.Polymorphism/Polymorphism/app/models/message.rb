class Message < ActiveRecord::Base
  validates :author, :message, presence:true
  validates :author, length:{in:2..20}
  validates :message, length:{in:2..250}

  belongs_to :user
  belongs_to :post
  has_many :comments, as: :commentable
end
