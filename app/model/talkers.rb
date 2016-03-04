class Talkers < ActiveRecord::Base
  has_many :talkers_beertalk
  has_many :beertalk, through: :talkers_beertalk
end
