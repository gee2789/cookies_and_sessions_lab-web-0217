class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def create
    @item = product_params[:cart]
    cart << @item
    @cart = cart
    redirect_to products_path
  end

private
def product_params(*args)
  params.require(:product).permit(:cart)
end


end
