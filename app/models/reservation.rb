class Reservation < ActiveRecord::Base
	validates :start_time, presence: true

  	belongs_to :User
  	belongs_to :Room
  	belongs_to :Period
end
