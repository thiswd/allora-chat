class Post < ApplicationRecord
  belongs_to :edition
  has_many :balloons, dependent: :destroy
  mount_uploader :post_img, PhotoUploader
end
