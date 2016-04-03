class Reservation < ActiveRecord::Base
  belongs_to :User
  belongs_to :Room
  belongs_to :Period
end
