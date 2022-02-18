class Post < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :genre, optional: true
  belongs_to :area, optional: true

  attachment :image

  has_many :post_images, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  def self.search(keyword)
    where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
  end

  def favorited_by?(user)
      likes.where(user_id: user.id).exists?
  end

  def save_tag(sent_tags)
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    old_tags = current_tags - sent_tags
    new_tags = sent_tags - current_tags
　
    old_tags.each do |old|
      self.tags.delete Tag.find_by(name: old)
    end
　
    new_tags.each do |new|
      new_tag = Tag.find_or_create_by(name: new)
      self.tags << new_tag
    end
  end
  

end
