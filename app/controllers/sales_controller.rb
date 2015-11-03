class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      flash[:notice] = "Sale created!"
      redirect_to user_sales_path
    else
      flash[:error] = "Invalid input - Please try creating sale again"
      render :new
    end
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    @sale = Sale.find(params[:id])
    if @sale.update_attributes(sale_params)
      flash[:notice] = "Sale updated!"
      redirect_to user_sales_path
    else
      flash[:error] = "Invalid input - Please try updating trip again"
      render :edit
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to admin_trips_path
  end
  private

  def sale_params
    params.require(:sale).permit(:date, :location, :family, :starting_bank,
                                 :ending_bank, :number_of_cups, :sales_tax,
                                 :farmers_market_fee, :cost_of_lemonad,)
  end
end


t.date     "date"
t.string   "location"
t.string   "family"
t.decimal  "starting_bank"
t.decimal  "ending_bank"
t.integer  "number_of_cups"
t.decimal  "sales_tax"
t.decimal  "farmers_market_fee"
t.decimal  "cost_of_lemonade"
t.decimal  "cost_of_ice_tea"
t.decimal  "cost_of_cups"
t.decimal  "misc"
t.decimal  "insurance_fee"
t.decimal  "stand_fee"
t.decimal  "commission_fee"
t.decimal  "starting_tips"
t.decimal  "ending_tips"