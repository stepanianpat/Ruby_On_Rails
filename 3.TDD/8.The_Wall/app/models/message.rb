class Message < ApplicationRecord
  belongs_to :user
  validates :message, :user, presence: true
  validates :message, length: { minimum: 10 }
end
