class Spot < ApplicationRecord
  has_many :spot_tags, dependent: :destroy
  has_many :tags, :through => :spot_tags

  accepts_nested_attributes_for :spot_tags, allow_destroy: true
end
