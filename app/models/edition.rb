class Edition < ApplicationRecord
  after_create :send_release_email # after press commit button

  belongs_to :user
  has_many :posts, inverse_of: :edition, dependent: :destroy
  has_many :balloons, through: :posts, class_name: "Balloon"
  validates :greeting, :farewell, presence: true


  mount_uploader :greeting_img, PhotoUploader
  mount_uploader :farewell_img, PhotoUploader
  mount_uploader :post_img, PhotoUploader


  accepts_nested_attributes_for :posts, allow_destroy: true

  private

  def send_release_email
    UserMailer.new_edition(self.user).deliver
  end

end


