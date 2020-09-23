class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :url
      t.time :time
      t.belongs_to :category
      # t.timestamps
    end
  end
end
