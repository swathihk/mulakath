# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Users.create(:username => 'admin',:password=> 'admin123',:email=>'eabyas@gmail.com',:role => 0,:gender=> false,:date_of_birth=> '1990-08-21',:status=>true)
