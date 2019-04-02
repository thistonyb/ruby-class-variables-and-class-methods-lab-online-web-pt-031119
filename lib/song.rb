class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  attr_accessor :name, :artist, :genre

  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@count += 1
    @@genres << song_genre
    @@artists << song_artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        counter = @@genre_count[genre]
        counter += 1
        @@genre_count[genre] = counter
      elsif condition
      end
    end
  end
        

end
