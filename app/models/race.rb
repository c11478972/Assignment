class Race < ActiveRecord::Base
	belongs_to :service_station
	validates :racename, :dor, :vehicletype, :racetype, :location, :driverentryfee, :spectatorfee, presence: true
	validates :racename, uniqueness: true
end
