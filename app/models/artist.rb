require 'pry'
class Artist < ActiveRecord::Base
    has_many :songs

    def my_songs
        Song.all.select {|song| song.artist == self}
    end 
    def song_count
        self.my_songs.count
    end 

end
