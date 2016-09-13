class Marketing < ActiveRecord::Base
  has_and_belongs_to_many :customers
  has_many :subscriptions
  has_many :messages
end
