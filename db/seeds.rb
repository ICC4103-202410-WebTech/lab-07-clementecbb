# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


PostTag.delete_all
Post.delete_all
User.delete_all
Tag.delete_all


User.create(name: "Augustus Caesar", email: "augustusc@example.com", password: "password1")
User.create(name: "Tiberius Caesar Augustus", email: "tiberiusc@example.com", password: "password2")
User.create(name: "Caligula Caesar Augustus Germanicus", email: "caligulac@example.com", password: "password3")
User.create(name: "Claudius Caesar Augustus Germanicus", email: "claudiusc@example.com", password: "password4")
User.create(name: "Nero Claudius Caesar Augustus Germanicus ", email: "neroc@example.com", password: "password5")
User.create(name: "John Doe", email: "johndoe@example.com", password: "password6")

tag1 = Tag.create(name: 'Pax')
tag2 = Tag.create(name: 'Roma')
tag3 = Tag.create(name: 'SPQR')
tag4 = Tag.create(name: 'Invicta')
tag5 = Tag.create(name: 'Tag 1')



post1 = Post.create(title: "Pax Romana: Prosperity for All", content: "As I reflect on the state of our great empire, I am pleased to see the Pax Romana bringing peace and prosperity to our citizens. Let us continue to work together for the glory and stability of Rome.",user_id: 1,published_at:'0100-08-04 05:00:00',answers_count: 50,likes_count: 600)
post1.tags << tag2
post1.tags << tag3
post1.tags << tag5
post2 = Post.create(title: "Honoring Rome's Traditions", content: "Today, we celebrate the founding of Rome and honor the traditions that have made our empire strong. Let us remember our ancestors and strive to uphold their legacy of greatness.",user_id: 1,published_at:'0100-12-01 06:00:00',answers_count: 40,likes_count: 500)
post2.tags << tag1
post2.tags << tag2
post2.tags << tag3
post3 = Post.create(title: "Investing in Infrastructure", content: "Announcing new infrastructure projects across the empire to improve transportation and communication. By investing in our infrastructure, we ensure the prosperity and unity of Rome for generations to come",user_id: 2,published_at:'0100-13-13 09:00:00',answers_count: 40,likes_count: 400)
post3.tags << tag1
post3.tags << tag2
post3.tags << tag3
post4 = Post.create(title: "Protecting our Borders", content: "Our legions stand strong at the borders, defending our empire from external threats. Let it be known that Rome will not falter in safeguarding our lands and people",user_id: 2,published_at:'0100-08-12 10:00:00',answers_count: 20,likes_count: 230)
post4.tags << tag1
post4.tags << tag2
post4.tags << tag3
post5 = Post.create(title: "Celebrating the Arts", content: "Hosting a grand festival in Rome to celebrate the arts and culture that enrich our empire. Let us embrace creativity and inspiration as we continue to flourish",user_id: 3,published_at:'0100-08-13 11:00:00',answers_count: 30,likes_count: 240)
post5.tags << tag1
post5.tags << tag2
post5.tags << tag3
post6 = Post.create(title: "Empowering the People", content: "Announcing measures to empower the citizens of Rome through increased civic engagement and representation. Together, we will ensure that every voice is heard in the governance of our great empire",user_id: 3,published_at:'0100-06-14 04:00:00',answers_count: 300,likes_count: 10000)
post6.tags << tag1
post6.tags << tag2
post6.tags << tag3
post7 = Post.create(title: "Expanding Education", content: "Investing in education across the empire to cultivate the minds of our youth and foster innovation and progress. Knowledge is the cornerstone of our civilization.",user_id: 4,published_at:'0100-06-21 05:00:00',answers_count: 200,likes_count: 1000)
post7.tags << tag1
post7.tags << tag2
post7.tags << tag3
post8 = Post.create(title: "Preserving our History", content: "Launching initiatives to preserve and protect the rich history and cultural heritage of Rome. Our past is a treasure that must be cherished and passed down to future generations.",user_id: 4,published_at:'0100-02-14 02:00:00',answers_count: 50,likes_count: 100)
post8.tags << tag1
post8.tags << tag2
post8.tags << tag3
post9 = Post.create(title: "Embracing Diversity", content: "Celebrating the diverse cultures and peoples within our empire. Let us embrace our differences and unite as one Roman family, stronger together.",user_id: 5,published_at:'0100-03-12 07:00:00',answers_count: 40,likes_count: 102)
post9.tags << tag1
post9.tags << tag2
post9.tags << tag3
post10 = Post.create(title: "Post 1", content: "lo agregue porque no sabia si debia ser generico o personalizado por mi",user_id: 6,published_at:'0110-10-10 10:00:00',answers_count: 30,likes_count: 100)
post10.tags << tag1
post10.tags << tag2
post10.tags << tag3


child_post1 = post10.child_posts.create(title: 'Honor in ROME',content: "ROMA INVICTA",user_id: 5,published_at: '124-02-10 17:00:00',answers_count: 50,likes_count: 700)

