class Friendship < ActiveRecord::Base
  belongs_to :person, :foreign_key => 'person_id', :class_name => 'Person'
  belongs_to :friend, :foreign_key => 'friend_id', :class_name => 'Person'
end
