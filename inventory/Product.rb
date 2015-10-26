class Product
	def initialize(product_info)
		@product_info = product_info
	end
	def product_info
		@product_info
	end
	def price
		@product_info[:price]
	end
	def id
		@product_info[:id]
	end
	def quantity
		@product_info[:quantity]
	end
	def name
		@product_info[:name]
	end
	def update(feature, value)
		@product_info[feature] = value
	end
end