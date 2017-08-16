class Post < ApplicationRecord
  belongs_to :edition
  has_many :balloons, dependent: :destroy
  mount_uploader :post_img, PhotoUploader
  mount_uploader :img1, PhotoUploader
  mount_uploader :img2, PhotoUploader
  mount_uploader :img3, PhotoUploader
  mount_uploader :img4, PhotoUploader
end
