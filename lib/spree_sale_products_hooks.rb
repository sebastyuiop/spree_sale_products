class SpreeSaleProductsHooks < Spree::ThemeSupport::HookListener  
  insert_after :admin_product_form_right, 'admin/products/product_reduction_form_field.html.erb'
  replace :products_list_item, 'admin/products/products_list_item.html.erb'
  replace :product_price, 'admin/products/product_price.html.erb'
end