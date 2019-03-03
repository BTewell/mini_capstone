class Api::ProductsController < ApplicationController

  def single_method
    @product = Product.first
    render 'one_product.json.jbuilder'
  end
  def all_method
    @products = Product.all
    render 'all_products.json.jbuilder'
  end
end