class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.includes(order: :customer).all
  end

  def show
    @subscritpion.find(params[:id])
  end
end
