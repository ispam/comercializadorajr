ActiveAdmin.register Company do

permit_params :company, :marks, :category, :establishment, :name, :details, :image, :industry, :offer,
	line_ids: [], place_ids: [], brand_ids: [], company_ids: []

	menu label: "Compañias"

end
