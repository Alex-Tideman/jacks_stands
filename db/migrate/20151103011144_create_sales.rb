class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :date
      t.string :location
      t.string :family
      t.decimal :starting_bank
      t.decimal :ending_bank
      t.integer :number_of_cups
      t.decimal :sales_tax
      t.decimal :farmers_market_fee
      t.decimal :cost_of_lemonade
      t.decimal :cost_of_ice_tea
      t.decimal :cost_of_cups
      t.decimal :misc
      t.decimal :insurance_fee
      t.decimal :stand_fee
      t.decimal :commission_fee
      t.decimal :starting_tips
      t.decimal :ending_tips

      t.timestamps null: false
    end
  end
end
