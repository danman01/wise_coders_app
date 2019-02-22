class CreateUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :quantity
      t.text :working_on
      t.string :share_tech
      t.string :teach_tech

      t.timestamps
    end
  end
end
