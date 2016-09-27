class AddTextToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :text_id, :integer
  end
end
