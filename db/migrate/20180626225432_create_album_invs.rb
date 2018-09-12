class CreateAlbumInvs < ActiveRecord::Migration[5.2]
  def change
    create_table :album_invs do |t|
      t.string :Title
      t.string :Genre
      t.date :Year
      t.date :dAdded
      t.integer :Plays

      t.timestamps
    end
  end
end
