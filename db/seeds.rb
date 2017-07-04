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
Airplane.create name: 'Virgin Airlines' , rows: 24 , columns: 4, plane_type: '757'
