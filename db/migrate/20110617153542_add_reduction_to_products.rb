class AddReductionToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :reduction_percentage, :integer
  end

  def self.down
    remove_column :products, :reduction_percentage
  end
end