ActiveAdmin.register Album do

permit_params :company, :marks, :category, :establishment, :name, :details, :file, :industry, :offer,
	line_ids: [], place_ids: [], brand_ids: [], company_ids: [], album_ids: [], product_ids: []

	form html: { multipart: true } do |f|
	    f.inputs "Imagen" do
	        #falta buscar como poner más imagenes, si con un modelos para HABTM o OTM.
	        f.input :file, :required => false, :as => :file
	        f.input :products, :as => :select, :collection => Product.pluck(:name, :id) 
	      end
	      f.actions
	  end
		
	index do 
		column "id", :id
		column "Producto", :product_ids
		column "Actualizada", :updated_at
		column "Nombre del Archivo", :file_filename
		column "Tipo de Imagen", :file_content_type
		# column "Tamaño", :file_size do |size|
		# 	number_to_human_size(size.file_size, precision: 2, separator: ',')
	 #    end
		actions name: "Acciones"
	    
	  end  
	  menu label: "Album"
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
