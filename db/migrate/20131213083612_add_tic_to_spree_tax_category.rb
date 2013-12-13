class AddTicToSpreeTaxCategory < ActiveRecord::Migration
  def change
    add_column :spree_tax_categories, :tic, :string
  end
end
