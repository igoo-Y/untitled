class RenameImageUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :image_url, :image
  end
end
