class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.date :date
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
