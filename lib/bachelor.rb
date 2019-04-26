require 'pry'

def get_first_name_of_season_winner(data, season)
   data[season].each do |key_data| #data[season]
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
    data.each do |season, contestant_array|
      contestant_array.each do |key_data| #hash
      #key_data[:hometown]  #if theres a key in that hash = :hometown,
        if key_data["hometown"] == hometown  #access the hometown key in hash & compare to arg. #then increase counter -- key should be turned into string so pay attn to how its def.
         counter += 1 #increases by 1 everytime
        end
      end
    end
  return counter
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
age = 0
counter = 0
  data[season].each do |key_data|
      #if key_data["age"] == age
        counter += 1
        age += key_data["age"].to_i
      end
    average = (age/counter.to_f).round
  return average
end
