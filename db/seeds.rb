# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first))

testUser = User.create(name: 'Test User')

testVideo = Video.create(genre: 'Tech', description: 'A video class instance which I am using for testing', title: 'The Test Video', length: 2.33, uploader: 'Megan')

testComment = Comment.create(content: 'Test Comment', user: testUser, video: testVideo)


