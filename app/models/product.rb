class Product < ActiveRecord::Base
	has_and_belongs_to_many :lines
 	has_and_belongs_to_many :places
 	has_and_belongs_to_many :companies
 	has_and_belongs_to_many :brands

 	attachment :file
end