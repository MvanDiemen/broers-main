class OrdersController < ApplicationController
  def index
    @orders = Order.joins(:customer).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @customer = Customer.find(params[:customer_id]) || nil
    @order = Order.new

    @lens_types = Order::LENS_TYPES.map do |type|
      {type => t(type, scope: 'activerecord.models.order.attributes.lens_types')}
    end

    @replacement_types = Order::REPLACEMENT_TYPES.map do |type|
      {type => t(type, scope: 'activerecord.models.order.attributes.replacement_types')}
    end
  end

  def new_subscription
    @order = Order.find(params[:id])

    @order.subscriptions.new(end_date: @order.end_date).save!

    flash[:success] = 'Nieuw abonnement aangemaakt'
    render :nothing => true
  end

  def create
    @order = Order.new(order_params(params))
    if @order.save!
      redirect_to @order
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def order_params(params)
    params.require(:order).permit(:date, :number, :customer_id, :lens_type, :replacement_type)
  end
end
