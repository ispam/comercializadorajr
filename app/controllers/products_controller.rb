class ProductsController < ApplicationController
	before_filter :set_search, only: [:index]
		def set_search
			@q = Product.search(params[:q])
			@products = @q.result(distinct: true)
		end

	def index
		@places = Place.all
		@lines = Line.all
		@brands = Brand.all
	end

	private

	def product_params
	  params.require(:product).permit(:name, :details, :industry, :oferta,
	  	:category, :mark, :establishment, :file)
	end

end
