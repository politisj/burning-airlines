# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

User.create email: 'politisj@gmail.com', name: 'John Politis' ,password: 'chicken'
User.create email: 'fred@gmail.com', name: 'fred freddddd' ,password: 'chicken'
User.create email: 'blob@gmail.com', name: 'blob blobblob' ,password: 'chicken'
User.create email: 'bill@gmail.com', name: 'bill billbill' ,password: 'chicken'

Airplane.destroy_all
a1 = Airplane.create name: 'Virgin Airlines' , rows: 24 , columns: 4, plane_type: '757'
a2 = Airplane.create name: 'Virgin Airlines' , rows: 24 , columns: 4, plane_type: '747'
a3 = Airplane.create name: 'Virgin Airlines' , rows: 24 , columns: 4, plane_type: '757'

Flight.destroy_all
f1 = Flight.create flight_no: '23' , departure_date: Date.strptime('2013-03-01','%Y-%m-%d') , from: 'JFK' , to: 'SFO'
f2 = Flight.create flight_no: '87' , departure_date: Date.strptime('2013-03-03','%Y-%m-%d') , from: 'JFK' , to: 'LAX'
f3 = Flight.create flight_no: '09' , departure_date: Date.strptime('2013-03-08','%Y-%m-%d') , from: 'JFK' , to: 'SFO'

a1.flights << f1;
a2.flights << f2;
a3.flights << f3;
