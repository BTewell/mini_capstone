class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url],
      supplier_id: params[:supplier_id],  
      user_id: 1
    ) 
    @product.save
    redirect_to "/products/#{recipe.id}"
  end
end
