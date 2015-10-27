ActiveAdmin.register Place do

permit_params :company, :marks, :category, :establishment, :name, :details, :image, :industry, :offer,
	line_ids: [], place_ids: [], brand_ids: [], company_ids: []

	menu label: "Tipo de Clientes"
	 controller do
      def create
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end

      def update
        super do |format|
          redirect_to collection_url and return if resource.valid?
        end
      end
    end

end
