def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |tv_season, contestants|
    if tv_season == season
      tv_season.each do |item, info|
        return tv_season[:name] if item[:status] == "Winner"
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
