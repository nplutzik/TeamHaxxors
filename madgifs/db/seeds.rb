# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create 4 admin users and 2 regular users
User.create(name: 'Jesse Sessler',
            email: 'jesse@sessler.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: true)
User.create(name: 'Spencer Stebbins',
            email: 'spencer@stebbins.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: true)
User.create(name: 'Igor Yuzovitskiy',
            email: 'igor@yuzovitskiy.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: true)
User.create(name: 'Nathan Plutzik',
            email: 'nathan@plutzik.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: true)
User.create(name: 'John Doe',
            email: 'john@smith.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: false)
User.create(name: 'Jane Smith',
            email: 'jane@smith.com',
            password: '12345',
            password_confirmation: '12345',
            score: 0,
            admin: false)
