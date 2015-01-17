class Cause < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :unit_donation, presence: true
	validates :hits, presence: true

	def add_hit
		update_attribute(:hits, hits + 1)
	end

	def money_raised
		hits * unit_donation
	end
end
