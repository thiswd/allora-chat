class Balloon < ApplicationRecord
  belongs_to :post
  mount_uploader :balloon_img, PhotoUploader

  def short_link
    if self.link.size > 52
      "#{self.link[0..52]}..."
    else
      self.link
    end
  end
end
