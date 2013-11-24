class Repair < ActiveRecord::Base
	belongs_to :vehicle
	belongs_to :service_station
	validates :description, presence: true
end
