require 'pry'

# return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

#iterates through winter holidays and adds a supply to each one 
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    holiday_hash[:winter][key] << supply
  end
end

# adds a supply to memorial day 
# adds a different supply to memorial day 
def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

# has all the winter supplies
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# outputs the formatted list of holidasy and their supplies
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supply.join(", ")}"
  end
end
end

#returns only the hashes that include BBQ
def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, full_entry|
    full_entry.each do |name, supply_array|
      if supply_array.include?("BBQ")
        bbq_holidays << name
      end
    end
  end
  bbq_holidays
end







