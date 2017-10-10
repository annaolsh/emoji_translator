class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :stories, :creator, :title
  end
end
