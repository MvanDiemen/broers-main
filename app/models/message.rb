class Message < ActiveRecord::Base
  belongs_to :customer
  belongs_to :subscription
  belongs_to :marketing
end
