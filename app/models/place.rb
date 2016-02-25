class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :length => {minimum:4}, :presence => true
	validates :address, :length => {minimum: 4}, :presence => true
	validates :description, :length => {minimum: 4}, :presence => true
	geocoded_by :address
	after_validation :geocode 
end
