class Sale < ActiveRecord::Base

  belongs_to :users
  validates :date,:location,:family,:starting_bank,:ending_bank,
            :revenue,:number_of_cups,:sales_tax,:farmers_market_fee,
            :cost_of_lemonade,:cost_of_ice_tea,:cost_of_cups,:misc,
            :insurance_fee,:stand_fee,:commission_fee,:starting_tips,
            :ending_tips,:your_tips,:total_profit,presence: true

end