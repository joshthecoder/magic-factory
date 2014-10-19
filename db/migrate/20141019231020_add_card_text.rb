class AddCardText < ActiveRecord::Migration
  def change
    change_table :cards do |t|
      t.column :text, :text
    end
  end
end
