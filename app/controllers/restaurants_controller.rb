class RestaurantsController < ApplicationController
  def menue
    table = Table.find_by_code params[:code]
    render json: {restaurant: table.restaurant, menue: table.restaurant.dishes}
  end
end
