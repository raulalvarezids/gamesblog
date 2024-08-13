class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo


  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }      

  validate :photo_presence

  private

  def photo_presence
    errors.add(:photo, "debe estar adjunta") unless photo.attached?
  end

  
end
