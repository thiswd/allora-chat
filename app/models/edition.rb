class Edition < ApplicationRecord
  belongs_to :user
  has_many :posts, inverse_of: :edition
  accepts_nested_attributes_for :posts, reject_if: :all_blank, allow_destroy: true


end
