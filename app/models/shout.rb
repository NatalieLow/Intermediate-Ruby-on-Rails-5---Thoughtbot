class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :content, presence: true, length: {in: 1..144}
  validates :user, presence: true

  delegate :username, to: :user

  # default_scope { order(created_at: :desc) }
end
