class Balloon < ApplicationRecord
  belongs_to :post
  mount_uploader :balloon_img, PhotoUploader
  validates_length_of :content, :maximum => 260, :message => "menos que 260 caracteres, por favor ;)"
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  def short_link
    if self.link.size > 27
      "#{self.link[0..24]}..."
    else
      self.link
    end
  end

  def youtube_embed

    match_data = self.youtube.match(/(?:https?:\/{2})?(?:w{3}\.)?youtu(?:be)?\.(?:com|be)(?:\/watch\?v=|\/)([^\s&]+)/)
    match_data[1]

  end
end
