class Company < ActiveRecord::Base
	validates :t_name, presence: true
end
