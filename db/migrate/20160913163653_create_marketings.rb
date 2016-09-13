class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.date :date
      t.string :subject

      t.timestamps null: false
    end

    create_table :marketings_customers do |t|
      t.references :marketings
      t.references :customers
    end

    add_index :marketings_customers, [:marketing_id, :customer_id]
    add_index :marketings_customers, :customer_id
  end
end
