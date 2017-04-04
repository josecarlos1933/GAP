class Author < ApplicationRecord

	has_many :books
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :birthdate, presence: true

end
