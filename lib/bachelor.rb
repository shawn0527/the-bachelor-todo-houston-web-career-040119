def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    contestant_hash.each do |attribute, value|
      if attribute == "status" && value == "Winner"
        return contestant_hash["name"].split(" ")[0]
      end
    end
  end
  # code here
end

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if attribute == "occupation" && value == occupation
          return contestant_hash["name"]
        end
      end
    end
  end
  # code here
end

def count_contestants_by_hometown(data, hometown)
  hometowne_count = 0
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          hometowne_count += 1
        end
      end
    end
  end
  return hometowne_count
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
