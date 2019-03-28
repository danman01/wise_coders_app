class CreateHappeningInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :happening_interests do |t|
      t.references :happening, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
