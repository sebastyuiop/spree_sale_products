Product.class_eval do
  validates :reduction_percentage, :inclusion => { :in => 1..100, :message => I18n.t("value_between_1_and_100"), :allow_blank => true }
  
  def calculated_price
    self.master.calculated_price
  end
end


