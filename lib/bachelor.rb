def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
        return person["name"].split[0] if person["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |person|
      return person["name"] if person["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total = 0
  data.each do |season, array|
    array.each do |person|
      total += 1 if person["hometown"] == hometown
    end
  end
  total
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |person|
      return person["occupation"] if person["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestants = 0
  data[season].each do |person|
    total_age += person["age"].to_i
    total_contestants += 1
  end
  average = total_age / total_contestants
  average2 = total_age / total_contestants.to_f
  if average2 - average >= 0.5
    return average + 1
  else
    return average
  end
end
