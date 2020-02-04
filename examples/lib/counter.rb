class Counter
	@qtt = 0

	def self.qtt
		@qtt
	end

	def self.increment
		@qtt += 1
	end
end