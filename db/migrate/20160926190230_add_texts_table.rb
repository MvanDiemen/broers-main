class AddTextsTable < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :name
      t.text   :body
      t.string :subject

      t.timestamps null: false
    end
  end
end
