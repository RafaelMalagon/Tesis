class Processarea < ActiveRecord::Base
	belongs_to :level

	has_many :goals
end
