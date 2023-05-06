require 'rails_helper'

describe NhlService do
  context '#get_teams' do
    it 'returns a list of data about all teams including id, venue, details etc' do
      teams_payload = NhlService.new.get_teams
      expect(teams_payload.teams.count).to eq(32)
    end
  end

  context '#get_current_season' do
    it 'returns a list of data about all teams including id, venue, details etc' do
      current_season = NhlService.new.get_current_season
binding.pry
    end
  end
end