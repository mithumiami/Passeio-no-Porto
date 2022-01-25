class Post < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :genre, optional: true
  belongs_to :area, optional: true

  attachment :image

  has_many :post_images, dependent: :destroy

end
