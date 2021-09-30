class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :bio
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
