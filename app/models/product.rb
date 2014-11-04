class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates_presence_of :title, :price, :description
  validates_format_of :price, :with => /\A[0-9]\d*\.\d{1,2}\z/, :message => "price is limited to two decimal places"
  def average_rating
    product_reviews = Review.where(product_id: self.id)
    return product_reviews.average(:rating)
  end
end
