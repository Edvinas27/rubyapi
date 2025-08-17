class CreateAnimals < ActiveRecord::Migration[8.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.date :born
      t.text :comments

      t.timestamps
    end
    add_index :animals, :name, unique: true
  end
end
