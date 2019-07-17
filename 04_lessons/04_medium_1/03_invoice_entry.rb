class InvoiceEntry
  attr_reader :product_name
  attr_accessor :quantity

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end

invoice = InvoiceEntry.new("bags", 10)
puts invoice.product_name
puts invoice.quantity

invoice.update_quantity(100)
puts invoice.quantity
