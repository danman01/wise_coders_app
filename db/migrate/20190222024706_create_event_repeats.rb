class CreateEventRepeats < ActiveRecord::Migration[5.2]
  def change
    create_table :event_repeats do |t|
      t.references :event, foreign_key: true
      t.integer :days_of_week, array: true
      t.integer :weeks_of_month, array: true
      t.integer :months_of_year, array: true
      t.datetime :repeat_start_date
      t.datetime :repeat_end_date
      t.integer :number_of_repeats

      t.timestamps
    end
    add_index :event_repeats, :days_of_week, using: 'gin'
    add_index :event_repeats, :weeks_of_month, using: 'gin'
    add_index :event_repeats, :months_of_year, using: 'gin'
  end
end
