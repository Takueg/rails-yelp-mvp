class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new ]

  def new
    @review = Review.new
    @review.restaurant = @restaurant
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
