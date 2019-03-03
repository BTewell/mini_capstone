class Api::ProductsController < ApplicationController

  # def single_method
  #   @product = Product.first
  #   render 'one_product.json.jbuilder'
  # end
  # def all_method
  #   @products = Product.all
  #   render 'all_products.json.jbuilder'
  # end

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      description: params[:input_description],
      price: params[:input_price],
      image_url: params[:input_image_url]
      )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.name = params[:input_name]
    @product.description = params[:input_description]
    @product.price = params[:input_price]
    @product.image_url = params[:input_image_url]
    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.destroy
    render 'destroy.json.jbuilder'
  end
end