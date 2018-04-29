class User < ApplicationRecord
  has_many :messages
  validates :username, presence: true, length: { minimum: 5 }, uniqueness: true
end
