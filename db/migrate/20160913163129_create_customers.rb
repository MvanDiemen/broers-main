class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.date :date_of_birth
      t.string :first_name
      t.string :last_name
      t.string :infix
      t.string :number

      t.timestamps null: false
    end
  end
end
