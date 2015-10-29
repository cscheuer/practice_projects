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
	def summary
		@inventory.each do |product|
			if product.product_info[:quantity] == 1
				puts "There is #{product.product_info[:quantity]} #{product.product_info[:name]} (ID: #{product.product_info[:id]}), selling for #{product.product_info[:price]} a piece"
			else
				puts "There are #{product.product_info[:quantity]} #{product.product_info[:name]}s (ID: #{product.product_info[:id]}), selling for #{product.product_info[:price]} a piece"
			end
		end
	end
end