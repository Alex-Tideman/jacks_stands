class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.ending_bank - @sale.starting_bank != @sale.revenue
      flash.now[:math] = "Check that math again...Hint #{@sale.ending_bank - @sale.starting_bank}"
      render :new
    elsif @sale.save
      flash.now[:notice] = "Sale created!"
      redirect_to user_path(id: @sale.id, user_id: @sale.user_id)
    else
      flash.now[:error] = "Invalid input - Please try creating sale again"
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
      flash.now[:notice] = "Sale updated!"
      redirect_to user_sales_path
    else
      flash.now[:error] = "Invalid input - Please try updating trip again"
      render :edit
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to user_sales_path
  end

  private

  def sale_params
    params.require(:sale).permit(:user_id,:date, :location, :family, :starting_bank,
                                 :ending_bank,:revenue,:number_of_cups, :sales_tax,
                                 :farmers_market_fee, :cost_of_lemonade,:cost_of_ice_tea,
                                 :cost_of_cups,:misc,:insurance_fee,:stand_fee,
                                 :commission_fee,:starting_tips,:ending_tips,:your_tips,
                                 :total_profit)
  end
end

