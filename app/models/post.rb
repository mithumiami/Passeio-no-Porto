class Post < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :genre, optional: true
  belongs_to :area, optional: true

  attachment :image

  has_many :post_images, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  def self.search(keyword)
    where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
  end
  
  def favorited_by?(user)
      likes.where(user_id: user.id).exists?
  end

end
