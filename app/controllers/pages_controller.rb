class PagesController < ApplicationController
  before_filter :set_search, only: [:inicio, :quienes, :contactenos]
    def set_search
      @q = Product.search(params[:q])
      @products = @q.result(distinct: true).page params[:page]
    end
  def inicio
    @products = Product.where(offer: true)
  end

  def quienes
  end

  def contactenos
  end

  private

    def page_params
      params.require(:page).permit(:name, :details, :industry, :oferta,
      	:category, :mark, :establishment, :file)
    end
end
