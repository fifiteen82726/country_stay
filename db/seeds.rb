# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

StayTime.destroy_all

StayTime.create!([
	{arrive_date: "2015-09-20", nationality: "Taiwan", country_stay: "US", day_stay: 90,name: "Coda"},
	{arrive_date: "2015-09-23", nationality: "China", country_stay: "US", day_stay: 90,name: "Fish"}
	])