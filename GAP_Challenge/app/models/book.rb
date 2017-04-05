class Book < ApplicationRecord

	has_many :authors
	#:order  :title DESC
	#belongs_to :publisher_house
	
	validates :title, presence: true
	validates :pages, :numericality => { :greater_than_or_equal_to => 0 }
	validates :cover, presence: true
  	validates :published_at, presence: true

  	def self.search(term)
  		where('LOWER(title) LIKE :term', term: "%#{term.downcase}%")
	end

end
