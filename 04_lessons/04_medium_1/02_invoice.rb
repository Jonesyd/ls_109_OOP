class InvoiceEntry
  attr_reader :product_name
  attr_accessor :quantity

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end

invoice = InvoiceEntry.new("flowers", 5)
puts invoice.quantity
puts invoice.product_name

invoice.update_quantity(10)
puts invoice.quantity
