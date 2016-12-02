class AddPhotoToSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :photo, :binary
  end
end
