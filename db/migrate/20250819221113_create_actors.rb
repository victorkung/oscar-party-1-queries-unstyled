class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
