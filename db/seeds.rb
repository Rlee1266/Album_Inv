# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AlbumPub.destroy_all

AlbumPub.create!([{id: 1 , name: 'Warner Music Group'}, {id: 2 ,name:'Sony Music'}, {id: 3 ,name: 'Universal Music Group'}])

p "Created #{AlbumPub.count} Publishers"