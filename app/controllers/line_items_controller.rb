class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.build(product: product, price: product.price)

    if @line_item.save
      flash[:notice] = "#{product.name} was successfully added to your cart"
      redirect_to shop_path
    else
      flash.now[:notice] = "could not add #{product.name} to your cart"
      redirect_to :back
    end


  end
end
