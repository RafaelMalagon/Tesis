class Practice < ActiveRecord::Base
	belongs_to :goal
	validates :t_name, presence: true
	has_many :steps
end
