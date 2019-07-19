# spec/models/playlist_song_spec.rb
require 'rails_helper'

RSpec.describe MachineSnacks, type: :model do
  describe "relationships" do
    it {should belong_to :machine}
    it {should belong_to :snack}
  end
end
