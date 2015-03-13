# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournaments = Tournament.create([{name: 'ラーメンラリー', beacon_major: 1, started_at: Time.local(2015, 3, 13, 0, 0, 0), ended_at: Time.local(2016, 3, 13, 0, 0, 0), deleted: false}])

Stamp.create(tournament: tournaments.first, name: 'So庵', beacon_minor: 1, latitude: 40.8040614, longitude: 140.4443302, deleted: false)
Stamp.create(tournament: tournaments.first, name: 'ラーメンめんこう', beacon_minor: 2, latitude: 40.8040614, longitude: 140.4443302, deleted: false)
Stamp.create(tournament: tournaments.first, name: '京華飯店', beacon_minor: 3, latitude: 40.7924172, longitude: 140.4452987, deleted: false)

tournaments = Tournament.create([{name: 'スタンプラリー', beacon_major: 2, started_at: Time.local(2015, 3, 13, 0, 0, 0), ended_at: Time.local(2016, 3, 13, 0, 0, 0), deleted: false}])

Stamp.create(tournament: tournaments.first, name: '菊ヶ丘運動公園', beacon_minor: 1, latitude: 40.7979079, longitude: 140.4425521, deleted: false)
Stamp.create(tournament: tournaments.first, name: '芦野公園', beacon_minor: 2, latitude: 40.9092959, longitude: 140.4505505, deleted: false)
Stamp.create(tournament: tournaments.first, name: '長者森平和公園', beacon_minor: 3, latitude: 40.8121659, longitude: 140.4944375, deleted: false)

