class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :passport_number
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
