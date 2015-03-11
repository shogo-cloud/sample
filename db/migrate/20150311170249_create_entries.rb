class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :image_url
      t.string :name
      t.integer :age
      t.integer :height
      t.string :hometown
      t.text :url
      t.timestamps null: false
      t.integer :rate
      t.string :phone
      t.string :mail
    end
  end
end