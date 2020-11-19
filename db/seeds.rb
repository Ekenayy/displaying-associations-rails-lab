require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

weezy = Artist.create(name: "Lil' Wayne")
song1= Song.create(title: "Go DJ", artist_id: weezy.id)
song2 = Song.create(title: "Lil Duffle Bag Boy", artist_id: weezy.id)
drizzy = Artist.create(name: "Drake")
song3 = Song.create(title: "You the best", artist_id: drizzy.id)


puts weezy.song_count
puts song2.artist_name