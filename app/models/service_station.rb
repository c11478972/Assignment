class ServiceStation < ActiveRecord::Base
	belongs_to :location
	has_many :repairs
	has_many :races
	validates :name, presence: true
	validates :owner, presence: true
	validates :contact_number, presence: true
	validates :address, presence: true
	validates :sstype, presence: true
	validates :contact_number, uniqueness: true
	validates :address, uniqueness: true
	validates :contact_number, format:{with: /\A([01]|[08]+)([0-9]{8,9})\Z/} #Accepts either a landline number or a 
end
