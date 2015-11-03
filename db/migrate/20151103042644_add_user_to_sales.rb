class AddUserToSales < ActiveRecord::Migration
  def change
    add_reference :sales, :users, index: true, foreign_key: true
  end
end
