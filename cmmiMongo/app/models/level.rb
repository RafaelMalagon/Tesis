class Level < ActiveRecord::Base
	validates :t_name, presence: true
end
