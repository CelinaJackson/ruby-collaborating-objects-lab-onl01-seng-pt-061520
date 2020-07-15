describe 'Song' do
  
  before(:example) {
    Song.class_variable_set(:@@all, [])
  }

  describe '#initialize with a name' do
    it 'accepts a name for the song and makes it accessible through an attribute accessor' do
      song = Song.new('Man in the Mirror')
      expect(song.name).to eq('Man in the Mirror')
    end
  end

  describe '#name=' do
    it 'sets the song name' do
      song = Song.new('Man in the Mirror')
      song.name = 'Thriller'
      expect(song.name).to eq('Thriller')
    end
  end

  describe '#artist=' do
    it 'sets the artist object to belong to the song' do
      song = Song.new('Man in the Mirror')
      new_artist_object = Artist.new('King of Pop')
      song.artist = new_artist_object
      expect(song.artist).to eq(new_artist_object)
    end
  end

  

  describe '#artist_name=' do
    it "accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute" do
      Artist.class_variable_set("@@all",[])

      song = Song.new('Man in the Mirror')
      song.artist_name = "Michael Jackson"
      expect(song.artist).to be_an(Artist)
      expect(song.artist.name).to eq("Michael Jackson")

      song_2 = Song.new('Thriller')
      song_2.artist_name = "Michael Jackson"
      expect(song_2.artist).to be_an(Artist)
      expect(song_2.artist.name).to eq("Michael Jackson")

      expect(Artist.all.length).to eq(1)
    end
  end
end


