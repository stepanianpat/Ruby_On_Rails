class Post < ActiveRecord::Base
  validates :title, :content, presence:true
  validates :title, length:{in:2..20}
  validates :content, length:{in:2..250}

  belongs_to :user
  belongs_to :blog
  has_many :messages

end
