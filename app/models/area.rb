class Area < ApplicationRecord

  has_many :posts
  has_many :post_images, dependent: :destroy
  
  attachment :image

end
