class RemoveUniqueIndexFromAnimalsName < ActiveRecord::Migration[8.0]
  def change
    remove_index :animals, :name if index_exists?(:animals, :name, unique: true)
    add_index :animals, :name unless index_exists?(:animals, :name)
  end
end
