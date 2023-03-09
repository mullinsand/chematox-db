class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :sample, foreign_key: true
      t.integer :drug
      t.string :level
      t.string :unit, null: true

      t.timestamps
    end
  end
end
