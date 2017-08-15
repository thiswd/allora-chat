class Balloon < ApplicationRecord
  belongs_to :post
  mount_uploader :balloon_img, PhotoUploader
end
