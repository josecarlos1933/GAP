class PublisherHouse < ApplicationRecord

	validates_uniqueness_of :name
	validates :name, presence: true
	validates :name, :numericality => { :less_than_or_equal_to => 150 }

end
