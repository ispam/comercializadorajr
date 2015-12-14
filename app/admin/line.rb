ActiveAdmin.register Line do

permit_params :company, :marks, :category, :establishment, :name, :details, :image, :industry, :offer,
	line_ids: [], place_ids: [], brand_ids: [], company_ids: []

   form html: { multipart: true } do |f|
    f.inputs "Edición" do
        f.input :category
        # f.input :image, required: true, as: :image
      end
      f.actions
  end

	menu label: "Línea de Productos"
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
