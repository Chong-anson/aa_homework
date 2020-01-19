class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    # TODO: your code here
    #count number of tracks for each album( return a hash album.title, count) 
    # Artist.joins(:tracks, :albums).group(Album: select('Album.title, COUNT(*)')
    albums = self.albums.joins(:tracks).group(:id).select('Albums.title, COUNT(*) AS num_track')
    #return the 
    count = {}
    albums.each do | album | 
      count[album.title] = album.num_track
    end 
    albums 
  end
end

