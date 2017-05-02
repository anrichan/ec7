class Product < ApplicationRecord
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  belongs_to :admin
  has_many :users, through: :purchases
  has_many :purchases
  validates :product_name, presence: true
  validates :price, presence: true
  validates :description, presence: true
   # 値段は数値で0以上
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  paginates_per 5  # 1ページあたり5項目表示
  
end
