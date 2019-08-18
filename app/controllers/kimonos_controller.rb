class KimonosController < ApplicationController
  def index
    @hakamas = Product.where(category: '1').order(updated_at: 'desc').limit(3)
    @furisodes = Product.where(category: '2').order(updated_at: 'desc').limit(3)
    @houmongis = Product.where(category: '3').order(updated_at: 'desc').limit(3)
  end

  def show
    @hakamas = Product.find(params[:id])

  end

  def category
    @product_items = Product.where(category:params[:category])
    @category = params[:category]
  end

end
