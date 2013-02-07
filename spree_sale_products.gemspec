Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sale_products'
  s.version     = '0.60.0.RC1'
  s.summary     = 'Allows a product to be marked as a sale product with discount'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Seb Weston'
  s.email             = 'sebweston@gmail.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.60.0.RC1')
end
