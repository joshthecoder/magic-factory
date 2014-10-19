class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.column :name, :string, null: false
      t.column :card_type, :string, null: false
      t.column :names, :string
      t.column :colors, :string
      t.column :card_layout, :integer, null: false
      t.column :mana_cost, :string
      t.column :converted_mana_cost, :integer
      t.column :power, :string
      t.column :toughness, :string
      t.column :loyalty, :integer
      t.column :image_name, :string

      t.timestamps null: false
    end
  end
end
