class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
