class Book < ApplicationRecord

	has_many :authors
	#belongs_to :publisher_house
	
	validates :title, presence: true
	validates :pages, :numericality => { :greater_than_or_equal_to => 0 }
	validates :cover, presence: true
  	validates :published_at, presence: true

end
