class CreateAlbumPubs < ActiveRecord::Migration[5.2]
  def change
    create_table :album_pubs do |t|
      t.string :name

      t.timestamps
    end
  end
end
