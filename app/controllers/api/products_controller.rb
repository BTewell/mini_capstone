class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end

    if params[:discount] == "true"
      @products = @products.where("price < ?", 25)
    end

    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  #only admins
  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id],
      )
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  #only admin
  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price
    @product.in_stock = params[:in_stock] || @product.in_stock
    if @product.save
      render 'show.json.jbuilder'
    else
      render "errors.json.jbuilder", status: :unprocessible_entity  
    end  
  end

  #only admin
  def destroy
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.destroy
    render 'destroy.json.jbuilder'
  end
end