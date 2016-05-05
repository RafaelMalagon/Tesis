class Practice < ActiveRecord::Base
	validates :t_name, presence: true
	has_many :steps
end
