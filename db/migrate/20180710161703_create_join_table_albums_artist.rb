class CreateJoinTableAlbumsArtist < ActiveRecord::Migration[5.2]
  def change
    create_join_table :album_invs, :artists do |t|
      # t.index [:album_inv_id, :artist_id]
      # t.index [:artist_id, :album_inv_id]
    end
  end
end
