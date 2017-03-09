# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cities = [
  "Hyderabad"
]
cities.each do |name|
  City.create(:name => name) if !City.find_by(name: name)
end

locations = [
  [ "Banjara-Hills", 1 ],
  [ "Gachibowli", 1 ],
  [ "Kondapur", 1 ],
  [ "Uppal", 1 ],
  [ "Kukatpally", 1 ],
  [ "Miyapur", 1 ],
  [ "Abids", 1 ],
  [ "Begumpet", 1 ],
  [ "Jubilee-Hills", 1 ],
  [ "Hitech-City", 1 ],
  [ "Secunderabad", 1 ]
]
locations.each do |location|
  Location.create(:name => location[0], :city_id => location[1]) if !Location.find_by(name: location[0], city_id: location[1])
end

appliance = [
  "Refrigerator",
  "Air-Conditioner",
  "Washing-Machine",
  "Microwave-Oven",
  "Geyser",
]
appliance.each do |name|
  Appliance.create(:name => name) if !Appliance.find_by(name: name)
end

brands = [
  "LG",
  "Samsung",
  "Whirlpool",
  "Electrolux",
  "Bosch",
  "Haier",
  "Videocon",
  "Panasonic",
]
brands.each do |name|
  Brand.create(:name => name) if !Brand.find_by(name: name)
end
