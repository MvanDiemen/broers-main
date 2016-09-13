class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :subscription, index: true, foreign_key: true
      t.belongs_to :marketing, index: true, foreign_key: true
      t.text :body
      t.string :subject
      t.date :date
      t.string :type

      t.timestamps null: false
    end
  end
end
