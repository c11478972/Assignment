class Vehicle < ActiveRecord::Base
	belongs_to :customer
	has_many :repairs
	validates :vehicletype, presence: true
	validates :model, presence: true
	validates :registration_num, presence: true
	validates :registration_num, uniqueness: true
end
