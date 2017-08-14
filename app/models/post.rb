class Post < ApplicationRecord
  belongs_to :edition
  has_many :balloons
end
