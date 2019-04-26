require 'pry'

def get_first_name_of_season_winner(data, season)
   data[season].each do |key_data|
      key_data.each do |key, value|
       if value == "Winner"
         full_name = key_data["name"]
       return full_name.split(" ")[0]
      end
   end
  end
end

def get_contestant_name(data, occupation)
    data.each do |season, season_array|
      season_array.each do |key_data|
        key_data.each do |key, value|
          if value == occupation
            return key_data["name"]
          end
        end
      end
    end
  end



def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_array|
    season_array.each do |key_data|
      key_data.each do |key, value|
      if value == hometown
         counter += 1
        end
      end
    end
  return counter
  end
end

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |key_data|
      key_data.each do |key, value|
        if value == hometown
          return key_data["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
