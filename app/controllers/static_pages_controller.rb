class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:profile]  
  def profile
    @products = Product.where(user_id: current_user.id).last(5).reverse
    @reviews = Review.where(user_id: current_user.id).last(5).reverse
  end
end
