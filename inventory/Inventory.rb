class Inventory
	def initialize
		@inventory = Array.new
	end
	def add(product)
		@inventory << product
	end
end