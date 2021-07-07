require 'rails_helper'

RSpec.describe 'Artists songs index' do
  it 'shows all of the titles of songs for the artist' do
    clutch = Artist.create!(name: "Clutch")
    regulator = clutch.songs.create!(title: "Regulator", length: 234, play_count: 123)
    dirt_road = clutch.songs.create!(title: "Dirt Road", length: 984, play_count: 586)

    visit "/artists/#{clutch.id}/songs"

    expect(page).to have_content(regulator.title)
    expect(page).to have_content(dirt_road.title)
  end

  it 'links to each songs show page'
end
