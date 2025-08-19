class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.text :description
      t.string :image
      t.integer :director_id
      t.date :released_on
      t.string :result
      t.integer :oscar_cohort

      t.timestamps
    end
  end
end
