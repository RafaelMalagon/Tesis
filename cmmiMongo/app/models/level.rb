class Level < ActiveRecord::Base
	validates :t_name, presence: true
	has_many :processareas
end
