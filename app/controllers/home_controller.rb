class HomeController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
   @products = Product.page(params[:page])
  end

  def show
  end

  # def buy
  #   @user = current_user
  #   # @purchase = @user.purchases.find(params[:id])
  #   @products = @user.products.find(params[:product_id])
  #   @purchase = Purchase.where(user_id: current_user.id)
  # end

end
