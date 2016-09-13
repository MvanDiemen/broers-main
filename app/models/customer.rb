class Customer < ActiveRecord::Base
  has_and_belongs_to_many :marketings

  has_many :orders
  has_many :subscriptions
  has_many :messages
end
