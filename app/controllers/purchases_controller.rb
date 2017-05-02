class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.new
    @product = Product.find(params[:id])
  end

  def create
    @purchase = Purchase.new(purchase_params)

     @product = Product.find(params[:product_id])
     # @purchase.user_id = current_user.id
     if @purchase.save
      # userと買うuserを一致させるから
      user = @purchase.user
      # deliverメソッドを使って、メールを送信する
        PurchaseMailer.purchase_email(user, @purchase).deliver

     else
      redirect_to purchase_path(@purchase)
     end

    end

  def index
    #binding.pry
    @purchases = Purchase.all


     # @products = @purchase.product.find(params[:id])
    # @user = @product.user.find(params[:id])
  #   @purchase = @user.purchases.find(params[:id])
  #   @purchase = Purchase.where(user_id: current_user.id)
  end








  # ________________________________________________________
  private

    def purchase_params
        params.require(:purchase).permit(:address, :postal_code, :phone, :user_id, :product_id, :user_name)
    end
end
