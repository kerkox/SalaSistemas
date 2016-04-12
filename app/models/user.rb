class User < ActiveRecord::Base
	validates :identificacion, length: { is: 14 }
	validates :identificacion, uniqueness: true
	validates :tipo, presence: true
	validates :email, uniqueness: true
	validates :password, confirmation: true, length: { minimum: 4 }, presence: true
	validates :penalizaciones, presence: true

	has_many :reservations
end
