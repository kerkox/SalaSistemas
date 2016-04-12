
class Period < ActiveRecord::Base
	validates :fecha_inicio, uniqueness: true, presence: true
	validates :fecha_finalizacion, uniqueness: true, presence: true

	has_many :reservations
end