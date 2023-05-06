# frozen_string_literal: true

class NhlService

  def initialize
    @connection = Faraday.new(
      url: 'https://statsapi.web.nhl.com',
      headers: {'Content-Type' => 'application/json'}
    )
  end

  def get_teams
    response = @connection.get("/api/v1/teams")
    parse(response)
  end

  def get_divisions(*modifers)
    response = @connection.get("/api/v1/divisions")
    parse(response)
  end

  def get_conferences(*modifers)
    response = @connection.get("/api/v1/conferences")
    parse(response)
  end

  def get_people(id)
    response = @connection.get("/api/v1/people/#{id}")
    parse(response)
  end

  def get_game_status
    response = @connection.get("/api/v1/gameStatus")
    parse(response)
  end

  def get_schedule(*modifers)
    response = @connection.get('api/v1/schedule')
    parse(response)
  end

  def get_current_season
    response = @connection.get('/api/v1/seasons/current')
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body, object_class: OpenStruct)
  end
end
