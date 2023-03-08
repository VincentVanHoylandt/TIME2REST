class CreateSeens < ActiveRecord::Migration[7.0]
  def change
    create_table :seens do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
