class RemoveQauntityFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :quantity, :integer
  end
end
