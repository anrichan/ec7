require 'rails_helper'

describe Purchase, type: :model do
   describe "#user_name"  do
    it "名前が登録されなければ失敗する" do
    user_name = Purchase.create(user_name: nil)
    expect(user_name.errors[:user_name]).to include("can't be blank")
    # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
    end
  end

   describe "#user_name"  do
     it "名前が登録されなければ失敗する" do
     user_name = Purchase.new(user_name: "")
     expect(user_name).to be_invalid
  #   # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
    end
   end

   describe "#address"  do
     it "アドレスがが登録されなければ失敗する" do
     address = Purchase.create(address: "")
     expect(address).to be_invalid
  #   # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
    end
   end

    describe "#postal_code"  do
     it "郵便番号が登録されなければ失敗する" do
     postal_code = Purchase.create(postal_code: "")
     expect(postal_code).to be_invalid
  #   # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
    end
   end
   describe "#phone"  do
     it "電話番号が登録されなければ失敗する" do
   phone = Purchase.create(phone: "")
     expect(phone).to be_invalid
  #   # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
    end
   end


  # describe "#price"  do
  #   it "金額が登録されなければ失敗する" do
  #   price = Product.create(price: "")
  #   expect(price).to be_invalid
  #   # expectbuild(create(:purchase, :user_name_is_nil)).to be_invalid
  #   end
  # end
end
