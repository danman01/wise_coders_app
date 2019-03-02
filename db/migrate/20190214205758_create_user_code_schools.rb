class CreateUserCodeSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :user_code_schools do |t|
      t.references :user, foreign_key: true
      t.references :code_school, foreign_key: true
      t.string :course
      t.string :campus
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
