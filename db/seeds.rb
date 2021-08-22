# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

Info.destroy_all
Tool.destroy_all

tools = Tool.create([{ name: 'MPC3000' }, { name: 'SP-1200' }, { name: 'Pro Tools®' }, { name: 'Logic Pro X' }, { name: 'SP-303' }, { name: 'SP-404' }, { name: 'S2400' }, { name: 'MASCHINE' }, { name: 'Ableton Live' }])


50.times do 
  Info.create(name: Faker::Quote.famous_last_words, tempo: rand(80...140),  key: Faker::Music.key, tool: tools.sample)
end

