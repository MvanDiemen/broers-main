class Customer < ActiveRecord::Base
  has_and_belongs_to_many :marketings

  has_many :orders
  has_many :subscriptions
  has_many :messages

  accepts_nested_attributes_for :orders, reject_if: :all_blank

  def name
    [first_name, infix, last_name].compact.join(' ')
  end
end
