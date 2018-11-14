class OrderController < ApplicationController

  def create
    order = Order.new
    saved_order = order.handle_creation params[:order]
    render json: saved_order
  end


  def get
    restaurant = Restaurant.find params[:restaurant_id]

    orders = []

    restaurant.tables.each do |table|
      orders << table.orders
    end

    render json: {orders: orders.flatten.as_json(include: [:table, :dishes])}
  end

  private
  def order_params
    params.require(:order).permit(:table, :dishes)
  end


end
