class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true
  monetize :cart_subtotal_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

end
