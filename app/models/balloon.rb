class Balloon < ApplicationRecord
  belongs_to :post
  mount_uploader :balloon_img, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  def short_link
    if self.link.size > 52
      "#{self.link[0..18]}..."
    else
      self.link
    end
  end
end
