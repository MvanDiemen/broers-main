class CustomersController < ApplicationController
  def index
    @orders = Order.joins(:customer).all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end
end
