class CreateEventHappenings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_happenings do |t|
      t.references :event, foreign_key: true
      t.references :happening, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.text :notes

      t.timestamps
    end
  end
end
