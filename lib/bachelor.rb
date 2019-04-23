def get_first_name_of_season_winner(data, season)
	data.each do |the_season, person_hash|
		if the_season == season
			person_hash.each do |person_info|
				if person_info["status"] == "Winner"
					return person_info["name"].split(" ")[0]
				end
			end
		end
	end
end

def get_contestant_name(data, occupation)
	data.each do |the_season, person_hash|
		person_hash.each do |person_info|
			if person_info["occupation"] == occupation
			return person_info["name"]
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
	counter = 0
	data.each do |the_season, person_hash|
		person_hash.each do |person_info|
			if person_info["hometown"] == hometown
			counter += 1
			end
		end
	end
	counter
end

def get_occupation(data, hometown)
	data.each do |the_season, person_hash|
		person_hash.each do |person_info|
			if person_info["hometown"] == hometown
			return person_info["occupation"]
			end
		end
	end
end

def get_average_age_for_season(data, season)
	counter = 0
	cummulative_ages = 0
	data.each do |the_season, person_hash|
		if the_season == season

			person_hash.each do |person_info|
			counter += 1
			cummulative_ages += person_info["age"].to_i
			end
		end
	end
	(cummulative_ages.to_f/counter).round

end
