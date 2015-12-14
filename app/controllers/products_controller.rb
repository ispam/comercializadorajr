class ProductsController < ApplicationController
	before_filter :set_search, only: [:index]
		def set_search
			@q = Product.search(params[:q])
			@products = @q.result(distinct: true).page params[:page]
		end

	def index
		# @places = Place.all
		# @lines = Line.all
		@brands = Brand.all
		@albums = Album.all
		@primer = Line.find(1)
		@segund = Line.find(2)
		@tercer = Line.find(3)
		@cuart = Line.find(4)
		@quint = Line.find(5)
		@sext = Line.find(6)
		@septim = Line.find(7)
		@octav = Line.find(8)
		@noven = Line.find(9)
		@primero = Place.find(1)
		@segundo = Place.find(2)
		@tercero = Place.find(3)
		@cuarto = Place.find(4)
		@quinto = Place.find(5)
		@sexto = Place.find(6)
		@septimo = Place.find(7)
		@octavo = Place.find(8)
		@noveno = Place.find(9)
		@decimo = Place.find(10)
	end

	private

	def product_params
	  params.require(:product).permit(:name, :details, :industry, :oferta,
	  	:category, :mark, :establishment, :file)
	end

end
