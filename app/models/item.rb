class Item < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/peppers.png"
  validates_attachment_content_type :image, content_type: /^image\/.*$/
end
