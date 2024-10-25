class Post < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  validates :content, presence: true
end
