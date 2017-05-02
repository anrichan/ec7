class CategoriesController < ApplicationController

  def create
      @category = Category.create(set_category)
      
  end

  def show
     @category = Category.find(params[:id])
     # whereは検索の条件が追加できる青の(テーブルの中のカラムの紫を探すという表記)
     @products = Product.where(category_id: @category.id)
    
  end
















#   private

#   def _params
#       params.require(:).permit()
#   end
# end
end
