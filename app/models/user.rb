class User < ApplicationRecord

 after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :editions, dependent: :destroy
  validates :username, :first_name, :last_name, :category, presence: true

  mount_uploader :user_photo, PhotoUploader
  validate :password_complexity
  def password_complexity
    if password.present?
       if !password.match(/^(?=.*[a-z])(?=.*[A-Z])/)
         errors.add :password, "Por favor, combine letras maiúsculas e minúsculas."
       end
    end
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
