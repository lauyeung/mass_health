# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# CSV with headers
require 'csv'

CSV.foreach('/Users/lauyeung/Dropbox/launchacademy/mass_health/db/data/mass_chip_data.csv', headers: true) do |town|

  if town.length == 14

    town_data = {
      name: town[0],
      population: town[1].gsub(/\,/,"").gsub(/\$/,""),
      aged_zero_through_nineteen: town[2].gsub(/\,/,"").gsub(/\$/,""),
      aged_sixty_five_plus: town[3].gsub(/\,/,"").gsub(/\$/,""),
      per_capita_income: town[4].gsub(/\,/,"").gsub(/\$/,""),
      persons_below_poverty: town[5].gsub(/\,/,"").gsub(/\$/,""),
      persons_below_poverty_rate: town[6].gsub(/\,/,"").gsub(/\$/,""),
      adequate_prenatal_care_rate: town[7].gsub(/\,/,"").gsub(/\$/,""),
      c_section_delivery_rate: town[8].gsub(/\,/,"").gsub(/\$/,""),
      infant_deaths: town[9].gsub(/\,/,"").gsub(/\$/,""),
      infant_mortality_rate: town[10].gsub(/\,/,"").gsub(/\$/,""),
      low_birthweight_rate: town[11].gsub(/\,/,"").gsub(/\$/,""),
      multiple_birth_rate: town[12].gsub(/\,/,"").gsub(/\$/,""),
      publicly_financed_prenatal_care_rate: town[13].gsub(/\,/,"").gsub(/\$/,""),
      teen_birth_rate: town[14].gsub(/\,/,"").gsub(/\$/,"")
    }

  end



  if TownHealthRecord.where(town_data).empty?
    TownHealthRecord.create(town_data)
  end

end









# FORMAT:
# [
# ['Begin the Beguine',  'Ella\'s Greatest Hits',  'Ella Fitzgerald', 1955, 'Columbia', 'now', 'now'],
# ['Miss Otis Regrets',  'Ella\'s Greatest Hits',  'Ella Fitzgerald', 1967, 'BMG', 'now', 'now'],
# ['My Funny Valentine',  'Jazz For the Martini',  'Ella Fitzgerald', 1980, 'Universal', 'now', 'now'],
# ['Begin the Beguine',  'Jazz For the Martini',  'Chet Baker', 1969, 'Universal', 'now', 'now'],
# ['My Funny Valentine',  'Chet Baker\'s Greatest Hits', 'Chet Baker', 1967, 'Columbia', 'now', 'now'],
# ['Without You', 'Chet Baker\'s Greatest Hits',  'Chet Baker', 1983, 'Capitol', 'now', 'now'],
# ['My Funny Valentine',  'Monk Gets Romantic', 'Thelonious Monk', 1955, 'Columbia', 'now', 'now'],
# ['All The Things You Are',  'Monk Solo Collection', 'Thelonious Monk', 1953, 'BMG', 'now', 'now'],
# ].each do |song|
#   song_attributes = {title: song[0], album: song[1], artist: song[2], year: song[3], label: song[4]}

#   if Song.where(song_attributes).empty?
#     Song.create(song_attributes)
#   end

# end


