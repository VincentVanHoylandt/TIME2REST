class CreateDiplomas < ActiveRecord::Migration[7.0]
  def change
    create_table :diplomas do |t|
      t.date :start_time
      t.date :end_time
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
