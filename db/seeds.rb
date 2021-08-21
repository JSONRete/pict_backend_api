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

infos = 12.times.map do
    Info.create(key: Faker::Music.key)
  end



mpc = Tool.create(name: 'MPC3000')
sp = Tool.create(name: 'SP-1200')
pt = Tool.create(name: 'Pro Tools®')
lx = Tool.create(name: 'Logic Pro X')
303 = Tool.create(name: 'SP-303')
404 = Tool.create(name: 'SP-404')
isla = Tool.create(name: 'S2400')
ni = Tool.create(name: 'MASCHINE')
al = Tool.create(name: 'Ableton Live')

Info.create([
    {name: 'Pop Heart', tempo: 120,  key: info.infos, tool: mpc},

])