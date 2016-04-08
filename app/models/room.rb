class Room < ActiveRecord::Base
	validate :cantd_mayorque_cantt

	validates :nombre, uniqueness: true

	has_many :reservations

	def cantd_mayorque_cantt
		if cantidad_disponible > cantidad_total
			errors.add(:cantidad_disponible, "Cantidad incorrecta")
		end
	end
end
