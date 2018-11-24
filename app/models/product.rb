class Product < ApplicationRecord
  belongs_to :Category
  mount_uploader :image, ImageUploader
end
