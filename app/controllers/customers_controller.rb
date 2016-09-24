class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
    # @order    = @customer.orders.new
  end

  def create
    @customer = Customer.new(customer_params(params))
    if @customer.save!
      redirect_to @customer
    else
      render "new"
    end
  end

  def edit

  end

  def customer_params(params)
    params.require(:customer).permit(:first_name, :infix, :last_name, :date_of_birth, :number)
  end
end
