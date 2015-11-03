class AddTipsandProfitToSales < ActiveRecord::Migration
  def change
    add_column :sales, :your_tips, :decimal
    add_column :sales, :total_profit, :decimal
  end
end
