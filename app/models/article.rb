class Article < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :hashtags
  accepts_nested_attributes_for :hashtags

  require 'carrierwave/orm/activerecord'
  mount_uploader :image, ImageUploader
end
