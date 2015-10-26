class Inventory
	def initialize
		@inventory = Array.new
	end
	def add(product)
		@inventory << product
	end
	def value
		@total_value = 0
		@inventory.each do |product|
			value = product.product_info[:price] * product.product_info[:quantity]
			@total_value += value
		end
		puts @total_value
	end
end