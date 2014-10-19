class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.column :name, :string, null: false
      t.column :type, :string, null: false
      t.column :names, :string
      t.column :colors, :string
      t.column :layout, :integer, null: false
      t.column :mana_cost, :string
      t.column :converted_mana_cost, :integer, null: false
      t.column :rarity, :string, null: false
      t.column :card_number, :string, null: false
      t.column :power, :string
      t.column :toughness, :string
      t.column :loyalty, :integer
      t.column :image_name, :string

      t.timestamps null: false
    end
  end
end
