class PlacesController < ApplicationController
	before_filter :set_search, only: [:show]
	
	def set_search
		@q = Product.search(params[:q])
		@products = @q.result(distinct: true).page params[:page]
	end
	
	def show
		@places = Place.find(params[:id])
	end

	private

	def place_params
	  params.require(:place).permit(:name, :details, :industry, :oferta,
	  	:category, :mark, :establishment, :file)
	end
end
