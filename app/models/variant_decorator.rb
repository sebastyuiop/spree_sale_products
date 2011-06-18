Variant.class_eval do  
  def calculated_price
    (self.price * ((100-self.product.reduction_percentage.to_f)/100)).floor_to(2)
  end
end