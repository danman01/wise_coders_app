class CreateUserInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_interests do |t|
      t.references :interest, foreign_key: true
      t.references :user, foreign_key: true
      t.text :experience
      t.integer :expertise
      t.boolean :want_to_teach
      t.boolean :want_to_learn

      t.timestamps
    end
  end
end
