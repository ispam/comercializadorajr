class BrandsController < ApplicationController
	before_filter :set_search, only: [:show]
		def set_search
			@q = Product.search(params[:q])
			@products = @q.result(distinct: true)
		end
  def show
  	@brand = Brand.find(params[:id])
  end
  private

    def brand_params
      params.require(:brand).permit(:name, :details, :industry, :oferta,
      	:category, :mark, :establishment, :file)
    end
end
