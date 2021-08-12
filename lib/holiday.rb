require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
#   given that holiday_hash looks like this:
#   {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
  # return the second element in the 4th of July array

    holiday_hash[:summer][:fourth_of_july][1]
    
      
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
   holiday_hash[:winter].each do |event, item|
    holiday_hash[:winter][event] << supply
   end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array   # holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash                                        
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

#def all_supplies_in_holidays(holiday_hash)
#  iterate through holiday_hash and print items such that your readout resembles:
#  Winter:
#    Christmas: Lights, Wreath
#    New Years: Party Hats
#  Summer:
#    Fourth Of July: Fireworks, BBQ
#  etc.    
#  holiday_hash.each do |season, season_info|  
#   puts "#{season.to_s.capitalize!}:"
#      season_info.each do |holiday_name, supplies|
#        puts "  #{holiday_name.to_s.split("_").each{|holiday| holiday.capitalize!}.join(" ")}: " + "#{supplies.join(", ")}"             
#    end   
#  end 
#end

          #puts (all in string interpolation) holiday_name to string, split into array. Iterate the array element and join back to string
          #with a space if needed (eg New, Year = New Year). Convert supplies array to string and add it on.


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_info|
    puts "#{season.to_s.capitalize!}:"
    season_info.each do |holiday_name, supplies|
      array = holiday_name.to_s.split("_")
        new_array = array.each {|holiday| holiday.to_s.capitalize!}.join(" ")
         puts "  #{new_array}: " + "#{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, season_info|
    season_info.each do |holiday_name, supplies|
      if supplies.include?("BBQ")
       bbq_array << holiday_name
      end
    end
  end
  bbq_array
end







