class Topic < ApplicationRecord
  validates :title, {presence: true, length: { maximum: 100}}


  has_one_attached :image
end
