class Api::V1::OrdersController < ApplicationController
  def create
    order = Order.create
    order.order_items.create(product:id: params[:product_id])
    render json: { message: 'The product has been added to your order' order_id: order_id }
  end
end
