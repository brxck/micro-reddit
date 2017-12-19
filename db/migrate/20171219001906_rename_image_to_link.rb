class RenameImageToLink < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :image, :link
  end
end
