class Person < ActiveRecord::Base
  # validates :first_name, :last_name, presence:true

  has_many :friendships, :foreign_key => 'person_id', :class_name => 'Friendship'
  has_many :firends, :through => :friendships
end
