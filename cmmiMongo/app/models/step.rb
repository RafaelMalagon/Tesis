class Step < ActiveRecord::Base
	validates :t_description, presence: true
end
