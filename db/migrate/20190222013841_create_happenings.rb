class CreateHappenings < ActiveRecord::Migration[5.2]
  def change
    create_table :happenings do |t|
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
