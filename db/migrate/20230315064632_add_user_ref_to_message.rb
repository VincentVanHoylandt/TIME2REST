class AddUserRefToMessage < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :messages, null: true, foreign_key: true
  end
end
