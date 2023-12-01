class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :title
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
