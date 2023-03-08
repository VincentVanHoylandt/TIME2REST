class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.date :start_time
      t.date :end_time
      t.string :description
      t.float :salary
      t.string :job_title
      t.boolean :archived
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
