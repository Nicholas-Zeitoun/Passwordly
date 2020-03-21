class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.string :name
      t.string :account
      t.string :password
      t.string :url

      t.timestamps
    end
  end
end
