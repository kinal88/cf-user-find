class License < ActiveRecord::Base
	belongs_to :user

	validates :state, format: { with: /\A[a-z]{2}\z/ },
	length: { is: 2}

	def state=(value)
		value = value.strip.upcase
		write attribute :state, value
	end
end
