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

class Perishable < Product
	def expiration_date(date)
		@product_info[:expiration] = date
	end
	def is_expired?
		unless @product_info[:expiration] == nil
			if @product_info[:expiration] < Date.today.to_s
				return true
			else
				return false
			end
		else
			puts "No expiration date specified for #{@product_info[:name]}"
		end
	end
end