# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



require "csv"
# prefectures
CSV.foreach('db/pref_code.csv') do |row|
  sleep(0.5)
  Prefecture.create(:id => row[0], :prefecture => row[1])
end
