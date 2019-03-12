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
end
