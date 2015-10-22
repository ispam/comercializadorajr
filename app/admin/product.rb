ActiveAdmin.register Product do

permit_params :company, :marks, :category, :establishment, :name, :details, :image, :industry, :offer,
	line_ids: [], place_ids: [], brand_ids: [], company_ids: [], sale_ids: []
	

   form html: { multipart: true } do |f|
    f.inputs "Edición de Producto" do
        f.input :name
        f.input :offer, :as => :boolean, :collection => Product.pluck(:offer, :id)
        f.input :image, :required => false, :as => :file, 
        f.input :details
        f.input :lines, :as => :check_boxes, :collection => Line.pluck(:category, :id)
        f.input :places, :as => :check_boxes, :collection => Place.pluck(:establishment, :id)
        f.input :companies, :as => :check_boxes, :collection => Company.pluck(:industry, :id)
        f.input :brands, :as => :check_boxes, :collection => Brand.pluck(:marks, :id)
      end
      f.actions
  end

	index do 
	  column "Titulo", :name
	  column "Creada", :created_at
	  column "Actualizada", :updated_at
	  column "Nombre del Archivo", :image_file_name
	  column "Tipo de Imagen", :image_content_type
	  column "Tamaño", :image_file_size do |size|
	  	number_to_human_size(size.image_file_size, precision: 2, separator: ',')
    end
  actions name: "Acciones"
    
  end

  
  menu label: "Productos"

end
