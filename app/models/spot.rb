class Spot < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_by, through: :favorites, source: :user
  has_many :spot_tags, dependent: :destroy
  has_many :tags, :through => :spot_tags
  belongs_to :user

  accepts_nested_attributes_for :spot_tags, allow_destroy: true

  validates :spot_name, presence: true, length: {maximum: 255}
  validates :address, presence: true

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode
end
