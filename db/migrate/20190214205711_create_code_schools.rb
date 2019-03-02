class CreateCodeSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :code_schools do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
