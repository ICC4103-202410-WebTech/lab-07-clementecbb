# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Eliminate all tags associated with posts
PostTag.delete_all

# Eliminate all posts
Post.delete_all

# Eliminate all users
User.delete_all

# Eliminate all tags
Tag.delete_all

# User data
user_data = [
  { name: "Augustus Caesar", email: "augustusc@example.com", password: "password1" },
  { name: "Tiberius Caesar Augustus", email: "tiberiusc@example.com", password: "password2" },
  { name: "Caligula Caesar Augustus Germanicus", email: "caligulac@example.com", password: "password3" },
  { name: "Claudius Caesar Augustus Germanicus", email: "claudiusc@example.com", password: "password4" },
  { name: "Nero Claudius Caesar Augustus Germanicus ", email: "neroc@example.com", password: "password5" },
  {name: "John Doe", email: "johndoe@example.com", password: "password6"}
]

# Create users
users = []
user_data.each do |data|
  users << User.create!(data)
end

# Tag data
tag_data = %w[Pax Roma SPQR Invicta Tag 1]

# Create tags
tags = []
tag_data.each do |name|
  tags << Tag.create!(name: name)
end

# Post data
posts_data = [
  { title: "Pax Romana: Prosperity for All", content: "As I reflect on the state of our great empire, I am pleased to see the Pax Romana bringing peace and prosperity to our citizens. Let us continue to work together for the glory and stability of Rome." },
  { title: "Honoring Rome's Traditions", content: "Today, we celebrate the founding of Rome and honor the traditions that have made our empire strong. Let us remember our ancestors and strive to uphold their legacy of greatness." },
  { title: "Investing in Infrastructure", content: "Announcing new infrastructure projects across the empire to improve transportation and communication. By investing in our infrastructure, we ensure the prosperity and unity of Rome for generations to come" },
  { title: "Protecting our Borders", content: "Our legions stand strong at the borders, defending our empire from external threats. Let it be known that Rome will not falter in safeguarding our lands and people" },
  { title: "Celebrating the Arts", content: "Hosting a grand festival in Rome to celebrate the arts and culture that enrich our empire. Let us embrace creativity and inspiration as we continue to flourish" },
  { title: "Empowering the People", content: "Announcing measures to empower the citizens of Rome through increased civic engagement and representation. Together, we will ensure that every voice is heard in the governance of our great empire"},
  { title: "Expanding Education", content: "Investing in education across the empire to cultivate the minds of our youth and foster innovation and progress. Knowledge is the cornerstone of our civilization."},
  { title: "Preserving our History", content: "Launching initiatives to preserve and protect the rich history and cultural heritage of Rome. Our past is a treasure that must be cherished and passed down to future generations."},
  { title: "Embracing Diversity", content: "Celebrating the diverse cultures and peoples within our empire. Let us embrace our differences and unite as one Roman family, stronger together."},
  { title: "Supporting the Arts", content: "Continuing to patronize the arts and sponsor performances that showcase the talent and creativity of our people. The arts are a reflection of our civilization's greatness."},
  { title: "Post 1", content: "lo agregue porque no sabia si debia ser generico o personalizado por mi" }
]

# Create posts
users.each do |user|
  posts_data.each do |post_data|
    post = user.posts.create!(post_data.merge(published_at: Time.now))
    tag = tags.sample
    post.tags << tag
  end
end
