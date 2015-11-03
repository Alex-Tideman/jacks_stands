class AddTotalExpensesToSale < ActiveRecord::Migration
  def change
    add_column :sales, :total_expenses, :decimal
  end
end
