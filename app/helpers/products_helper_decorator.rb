ProductsHelper.class_eval do
  def product_price(product_or_variant, options={})
    options.assert_valid_keys(:format_as_currency, :show_vat_text, :show_calculated_price)
    options.reverse_merge! :format_as_currency => true, :show_vat_text => Spree::Config[:show_price_inc_vat]

    amount = options[:show_calculated_price] ? product_or_variant.calculated_price : product_or_variant.price
    amount += Calculator::Vat.calculate_tax_on(product_or_variant) if Spree::Config[:show_price_inc_vat]
    
    options.delete(:show_calculated_price)
    options.delete(:format_as_currency) ? format_price(amount, options) : amount
  end
end