class Order < ActiveRecord::Base
  belongs_to :customer

  def end_date
    date + 6.months
  end
end
