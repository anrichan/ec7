class ProductsController < ApplicationController

  def new
    @product = Product.new
    @category = Category.new
  end

  def create
    @product = Product.new(product_params)
    @product.admin_id = current_admin.id
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def index
    @products = Product.all
    @products = Product.page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
    @product_category = Category.find(@product.category_id)
    # @category = Category.find(params)
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to home_index_path
  end









#_________________________________________________________________________

private

  def product_params
      params.require(:product).permit(:product_name, :price, :description, :select_item, :admin_id, :category_id, :photo)
  end
  def set_categories
    @categories = Category.all.pluck(:name)
  end
end