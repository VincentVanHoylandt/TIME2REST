class AddColumnUser2ToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :user_2, :integer
  end
end
