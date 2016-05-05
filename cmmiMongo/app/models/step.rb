class Step < ActiveRecord::Base
	belongs_to :user, :practice
	validates :t_description, presence: true
end
