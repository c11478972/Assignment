class Customer < ActiveRecord::Base
	belongs_to :location
	has_many :vehicles
	has_many :journals
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :location_id, presence: true
	validates :email, uniqueness: true
	validates :email, format:{with: /\A([^@\s]+)@((?:[-a-z0+9]+\.)+[a-z]{2,})\Z/}
	has_secure_password
end
