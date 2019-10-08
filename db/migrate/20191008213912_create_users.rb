class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :email
      t.string :region

      t.timestamps
    end
  end
end
