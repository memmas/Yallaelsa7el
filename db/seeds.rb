# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'roo'

xlsx = Roo::Spreadsheet.open(File.expand_path('/home/memmas/Desktop/Database.xlsx'))


y = xlsx.sheet(0).last_row



for x in 2..y
    HoltesInfo.create(Destination: xlsx.sheet(0).row(x)[0], Owner_Name: xlsx.sheet(0).row(x)[1],Mobile_Number:xlsx.sheet(0).row(x)[2] ,URL: xlsx.sheet(0).row(x)[3] ,Number_of_rooms: xlsx.sheet(0).row(x)[4],Number_of_Beds:xlsx.sheet(0).row(x)[5],Accomodates:xlsx.sheet(0).row(x)[6]).save()
end
