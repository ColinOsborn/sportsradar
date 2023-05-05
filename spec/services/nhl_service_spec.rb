require 'spec_helper'

describe 'NhlService' do
  context '#get_teams' do
    it 'returns a list of data about all teams including id, venue, details etc' do
      teams = NhlService.new.get_teams
      binding.pry
      expect(teams)
    end
  end
end