class CreateEventCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :event_centers do |t|
      t.string :name
      t.integer :address

      t.timestamps
    end
  end
end
