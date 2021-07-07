class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
    if(self.artist)
      self.artist.name
    end
  end

  def artist_name= (name)
    self.artist=Artist.find_or_create_by(name: name)
    self.save
  end
end
