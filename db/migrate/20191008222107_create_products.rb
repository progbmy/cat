class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :manufacturer
      t.string :name
      t.integer :vendor_code
      t.string :weight
      t.string :price
      t.string :minimal_amount
      t.string :title
      t.string :h1
      t.string :key_words
      t.string :description

      t.timestamps
    end
  end
end
