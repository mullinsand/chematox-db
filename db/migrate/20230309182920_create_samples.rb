class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.integer :subject_age, null: true
      t.integer :line_number
      t.string :agency, null: true
      t.datetime :offense, null: true
      t.datetime :draw, null: true

      t.timestamps
    end
  end
end
