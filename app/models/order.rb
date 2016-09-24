class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :subscriptions

  LENS_TYPES = [
    MONOFOCAL  = 'mono',
    MULTIFOCAL = 'multi',
    VARIFOCAL  = 'vari'
  ]

  REPLACEMENT_TYPES = [
    BI_WEEKLY = 'bi_weekly',
    MONTHLY   = 'monthly',
    DAILY     = 'daily'
  ]

  def end_date
    date + 6.months
  end
end
