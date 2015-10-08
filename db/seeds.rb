# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

links = Link.create([
  {
    title: "Lotus 0.5.0",
    url: "http://lotusrb.org/blog/2015/09/30/announcing-lotus-050.html",
    description: "They've just put out another release of the Lotus Framework. Could be interesting."
  },
  {
    title: "Rails for Zombies",
    url: "http://railsforzombies.org/",
    description: "Could be useful if any of your friends are looking to get into the Rails game."
  }
])
