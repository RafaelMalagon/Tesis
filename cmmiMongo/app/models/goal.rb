class Goal < ActiveRecord::Base
	belongs_to :processarea
	validates :t_name, presence: true
	has_many :practices
end
