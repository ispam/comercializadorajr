class Company < ActiveRecord::Base
	has_and_belongs_to_many :lines
 	has_and_belongs_to_many :places
 	has_and_belongs_to_many :products
 	has_and_belongs_to_many :brands
end
