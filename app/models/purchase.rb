class Purchase < ApplicationRecord
  # モデルのメソッドになる
  belongs_to :user
  belongs_to :product
  # 入ってないとだめなやつ
  validates :product_id, presence: true
  validates :address, presence: true
  validates :postal_code, presence: true
  validates :phone, presence: true
  validates :user_name, presence: true
  validates :phone,    length: { maximum: 11 } 

end
