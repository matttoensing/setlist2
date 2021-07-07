require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      it 'returns the average song length' do
        clutch = Artist.create!(name: "Clutch")
        regulator = clutch.songs.create!(title: "Regulator", length: 234, play_count: 123)
        dirt_road = clutch.songs.create!(title: "Dirt Road", length: 985, play_count: 586)
        ghost = clutch.songs.create!(title: "Ghost", length: 367, play_count: 928)

        expect(clutch.average_song_length.round(2)).to eq(528.67)
      end
    end
  end
end
