class AddRevenueToSales < ActiveRecord::Migration
  def change
    add_column :sales, :revenue, :decimal
  end
end
