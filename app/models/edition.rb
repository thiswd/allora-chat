class Edition < ApplicationRecord
  belongs_to :user
  has_many :posts, inverse_of: :edition, dependent: :destroy
  accepts_nested_attributes_for :posts, reject_if: :all_blank, allow_destroy: true
  mount_uploader :greeting_img, PhotoUploader
  mount_uploader :farewell_img, PhotoUploader


end


