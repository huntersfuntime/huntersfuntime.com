# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Tech #{topic}"
    )
end

10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "It was all a dream I use to read word up magazine, salt and peppa, heavy d up in the limousine",
      topic_id: Topic.last.id
  )
end

puts "10 Blogs created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 Skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Title #{portfolio_item}" ,
        subtitle: "Some cool stuff",
        body: "It was all a dream use to read word up magazine, salt and peppa, heavy d up in the limousine",
        main_image: "http://via.placeholder.com/600x200",
        thumb_image: "http://via.placeholder.com/350x250"
    )
end

puts "9 Portfolios created"