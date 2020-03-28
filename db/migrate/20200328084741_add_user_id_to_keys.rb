class AddUserIdToKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :keys, :user, foreign_key: true
  end
end
