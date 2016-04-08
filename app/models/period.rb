class Period < ActiveRecord::Base
	validate :periodo_un_solo_dia
	validate :periodo_finaliza_hoy

	validates :fecha_inicio, uniqueness: true
	validates :fecha_finalizacion, uniqueness: true

	has_many :reservations

	def periodo_un_solo_dia
		if fecha_finalizacion == fecha_inicio
			errors.add(:fecha_finalizacion, "fecha incorrecta")
		end
	end

	def periodo_finaliza_hoy
		if fecha_finalizacion.between?(Date.today, Date.today + 86400)
			errors.add(:fecha_finalizacion, "fecha incorrecta")
		end
	end
end
