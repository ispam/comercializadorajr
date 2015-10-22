class Line < ActiveRecord::Base
	has_and_belongs_to_many :brands
 	has_and_belongs_to_many :places
 	has_and_belongs_to_many :products
 	has_and_belongs_to_many :companies
end
