class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :trip_id
      t.integer :attraction_id
      t.date  :updated_at
      t.timestamps
    end
  end
end
