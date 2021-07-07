require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create!(name: "Clutch")
    song = artist.songs.create!(title: "Dirt Road", length: 209, play_count: 213)
    song2 = artist.songs.create!(title: "The Regulator", length: 123, play_count: 135)
    
    visit "songs/#{song.id}"

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song2.title)
  end

  it 'displays the name of the artist of the song' do
    artist = Artist.create!(name: "Clutch")
    song = artist.songs.create!(title: "Dirt Road", length: 209, play_count: 213)
    song2 = artist.songs.create!(title: "The Regulator", length: 123, play_count: 135)

    visit "songs/#{song.id}"

    expect(page).to have_content(artist.name)
  end
end
