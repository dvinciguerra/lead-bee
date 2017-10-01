class Lead < ApplicationRecord

	# validations
	validates :name, 
		presence: true
	
	validates :email, 
		presence: true,
		uniqueness: true
	
	validates :age, 
		presence: true,
		numericality: { only_integer: true, greater_than: 8, less_than: 150 }
	
	validates :job, 
		presence: true




end
