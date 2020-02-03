class CreateHourlyProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :hourly_productions do |t|
      t.integer :identifier
      t.string :date_time
      t.integer :energy
      
      t.timestamps
    end
  end
end
