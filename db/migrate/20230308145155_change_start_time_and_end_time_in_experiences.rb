class ChangeStartTimeAndEndTimeInExperiences < ActiveRecord::Migration[7.0]
  def change
    remove_column :experiences, :start_time
    remove_column :experiences, :end_time
  end
end
