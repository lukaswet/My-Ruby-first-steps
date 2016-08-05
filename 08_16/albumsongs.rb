class Album
	attr_reader :name
	attr_reader :songs

	def initialize name
		@name = name
		@songs = []
	end

	def add_song song
		songs << song
	end
end

class Song

	attr_reader :name, :duratiom

	# name, duration
	def initialize name, duratiom

		@name = name
		@duratiom = duratiom
	end
end

album = Album.new 'Morskaya'

song1 = Song.new 'Vdrug ushli poezda', 4
song2 = Song.new 'Kot kota', 5
song3 = Song.new 'Vladivostok 2000', 3

album.add_song song1
album.add_song song2
album.add_song song3

# виводим 2-ий трек
puts album.songs[1].name
