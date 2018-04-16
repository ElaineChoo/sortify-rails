# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = Genre.create(
    [
        {name: 'RnB', description: 'Rhythm and Blues originated in African American communities.'},
        {name: 'Rock', description:  'Originated as "rock and roll" in the United States.'},
        {name: 'EDM', description: 'aka Electronic dance music is a broad range of percussive electronic music using "repetitive beat" and "synthesixed backing tracks"'},
        {name: 'Classical', description: 'Art music produced or rooted in the traditions of Western culture'}
    ]
)

songs = Song.create(
    [
        {name: 'Questions', genre: genres.first}
    ]
)