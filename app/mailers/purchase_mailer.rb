class PurchaseMailer < ApplicationMailer
  default from: "from@example.com"

  def purchase_email(user, purchase)
   @produce = purchase.product.product_name
    mail to: user.email, subject: "注文完了しました。"
  end
end
