class AddPublisherColumnToAlbumInvs < ActiveRecord::Migration[5.2]
  def change
    add_column :album_invs, :Publisher, :string
  end
end
