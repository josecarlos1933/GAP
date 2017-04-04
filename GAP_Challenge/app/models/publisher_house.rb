class PublisherHouse < ApplicationRecord

	has_many :books
	validates_uniqueness_of :name
	validates :name, presence: true
	validates :name, length: { maximum: 150 }

end
