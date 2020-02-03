class CreateDayProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :day_productions do |t|
      t.string :day
      t.integer :energy_total
      t.timestamps
    end
  end
end
