class CreateUserWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_workouts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :workout, index: true, foreign_key: true
      t.date :date
      # t.timestamps
    end
  end
end
