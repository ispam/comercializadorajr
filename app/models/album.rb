class Album < ActiveRecord::Base
 	has_and_belongs_to_many :products
	attachment :file
end
