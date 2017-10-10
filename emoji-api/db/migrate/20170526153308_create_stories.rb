class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :original_content
      t.string :translated_content
      t.string :creator

      t.timestamps
    end
  end
end
