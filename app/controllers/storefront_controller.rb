class StorefrontController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:index]
  def index

    if params[:search]
      @products = Product.search_by_name_or_description(params[:search])
      if @products.empty?
	flash.now[:notice] = "No Result found for \"#{params[:search]}\", showing all products"
	@products = Product.all
      end

    elsif params[:cat_id]
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
    @products = Product.all
    end


  end

  def about
  end

end

