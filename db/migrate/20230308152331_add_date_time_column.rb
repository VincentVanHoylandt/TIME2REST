class AddDateTimeColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :start_time, :date
    add_column :experiences, :end_time, :date
  end
end
