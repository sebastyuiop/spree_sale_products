LineItem.class_eval do
  def copy_price
    self.price = variant.calculated_price if variant && self.price.nil?
  end
end