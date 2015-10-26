class Brand < ActiveRecord::Base
	has_and_belongs_to_many :lines
 	has_and_belongs_to_many :places
 	has_and_belongs_to_many :products
 	has_and_belongs_to_many :companies
 	paginates_per 40
end
