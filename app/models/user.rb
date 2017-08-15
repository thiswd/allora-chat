class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :editions, dependent: :destroy
  mount_uploader :user_photo, PhotoUploader
  validate :password_complexity
  def password_complexity
    if password.present?
       if !password.match(/^(?=.*[a-z])(?=.*[A-Z])/)
         errors.add :password, "Por favor, combine letras maiúsculas e minúsculas."
       end
    end
  end
end
