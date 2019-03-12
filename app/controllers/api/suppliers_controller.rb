class Api::SuppliersController < ApplicationController
  def index
    if params[:search]
      @suppliers = Supplier.where("name iLIKE ?", "%#{params[:search]}%")
    else
      @suppliers = Supplier.all
    end

    if params[:sort] && params[:sort_order]
      @suppliers = @suppliers.order(params[:sort] => params[:sort_order])
    end
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @supplier = Supplier.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    if @supplier.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    @supplier = Supplier.find_by(id: the_id)
    @supplier.name = params[:name] || @supplier.name
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.email = params[:email] || @supplier.email
    if @supplier.save
      render 'show.json.jbuilder'
    else
      render "errors.json.jbuilder", status: :unprocessible_entity  
    end  
  end

  def destroy
    the_id = params[:id]
    @supplier = Supplier.find_by(id: the_id)
    @supplier.destroy
    render 'destroy.json.jbuilder'
  end
end
