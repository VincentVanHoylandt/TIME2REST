class RenameColumnAndForeignKey < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :participant_id, :user_id
    remove_foreign_key :messages, :participants
  end
end
