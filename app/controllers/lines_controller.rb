class LinesController < ApplicationController
	before_filter :set_search, only: [:show]
		def set_search
			@q = Product.search(params[:q])
			@products = @q.result(distinct: true)
		end
  def show
  	@line = Line.find(params[:id])
  end
  private

    def line_params
      params.require(:line).permit(:name, :details, :industry, :oferta,
      	:category, :mark, :establishment, :file)
    end
end
