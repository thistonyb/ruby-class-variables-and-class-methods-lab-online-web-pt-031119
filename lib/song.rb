class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
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
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    return unique_genres
  end

  def self.artists

  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count.has_key?(genre)
        counter = @@genre_count[genre]
        counter += 1
        @@genre_count[genre] = counter
      elsif @@genre_count == nil || !@@genre_count.has_key?(genre)
        @@genre_count[genre] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each do |artist|
      # if @@artist_count.has_key?(artist)
      #   counter = @@artist_count[artist]
      #   counter += 1
      #   @@artist_count[artist] = counter
      if @@artist_count == nil || !@@artist_count.include?(artist)
        @@artist_count << artist
      end
    end
    return @@artist_count
  end

end
