class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.belongs_to :customer, index: true, foreign_key: true
      t.string :replacement_type
      t.string :lens_type

      t.timestamps null: false
    end
  end
end
