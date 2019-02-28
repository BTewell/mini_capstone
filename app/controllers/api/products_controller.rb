class Api::ProductsController < ApplicationController

  def hello_method
    render json: {message: "Howdy!"}
  end
end