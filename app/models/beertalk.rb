class Beertalk <ActiveRecord::Base
	# has_many :talkers_beertalk
	# has_many :talkers through: :talkers_beertalk
	belongs_to :talkers
end