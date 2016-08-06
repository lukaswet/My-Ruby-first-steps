class Artist
	attr_reader :name, :albums

	def initialize name
		@name = name
		@albums = []
	end

	def add_album album
		@albums << album
	end

	def show_album
		puts "This is #{@name}"
		@albums.each do |album|
			puts "Album: #{album.name} - #{album.year} includes songs:"
			album.show_songs
		end
	end
end

class Album
	attr_reader :name
	attr_reader :songs
	attr_reader :year

	def initialize name, year
		@name = name
		@year = year
		@songs = []
	end

	def add_song name
		@songs << name
	end

	def show_songs
		@songs.each do |song|
			puts "#{song.name} == #{song.duration}"
		end
	end
end

class Song

	attr_reader :name, :duration

	# name, duration
	def initialize name, duration

		@name = name
		@duration = duration
	end
end

artist = Artist.new('Mumiy Troll')

album1 = Album.new('Ikra', '1997')
artist.add_album(album1)

album1.add_song(song1 = Song.new('Dolya Riska', '3:59'))
album1.add_song(song2 = Song.new('Shamany', '3:36'))
album1.add_song(song3 = Song.new('Siamskie Serdtsa', '3:57'))
album1.add_song(song4 = Song.new('Ne Zvezda', '3:32'))
album1.add_song(song5 = Song.new('Delfyni', '4:39'))
album1.add_song(song6 = Song.new('Ranetka', '3:20'))
album1.add_song(song7 = Song.new('Na yadi', '3:11'))
album1.add_song(song8 = Song.new('Tak Nado', '"3:59'))
album1.add_song(song9 = Song.new('Almazami', '4:16'))
album1.add_song(song10 = Song.new('Signali', '4:18'))
album1.add_song(song11 = Song.new('Malchik-Soldat', '4:35'))
album1.add_song(song12 = Song.new('Golod', '4:44'))
album1.add_song(song13 = Song.new('Sayonara Diska', '3:48'))
album1.add_song(song14 = Song.new('Daleko', '6:24'))

artist.show_album

