class User < ApplicationRecord

 # after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :editions, dependent: :destroy
  validates :username, :first_name, :last_name, :category, presence: true

  mount_uploader :user_photo, PhotoUploader
  mount_uploader :banner, PhotoUploader

  private

  def send_welcome_email
    # UserMailer.welcome(self).deliver_later
  end

end
