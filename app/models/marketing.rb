class Marketing < ActiveRecord::Base
  has_many :customers
  has_many :subscriptions
  has_many :messages
end
