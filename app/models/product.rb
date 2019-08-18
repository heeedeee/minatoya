class Product < ApplicationRecord
  has_one_attached :image
  enum category:{unselected:0,hakama:1,furisode:2,houmongi:3}
  enum color:{unselected1:0,red:1,blue:2,brack:3,white:4,yellow:5,}
  enum scene:{unselected2:0,ceremony:1,wedding:2,party:3}
  validates :name, :description, presence: true, length: {minimum: 2 }
  # validates :image, file_size: { less_than_or_equal_to: 100.kilobytes }, file_content_type: { allow: ['image/jpeg', 'image/png'] }
  validates :price, numericality: { only_integer: true }
  validates :category, :color, :scene, presence: true
end
