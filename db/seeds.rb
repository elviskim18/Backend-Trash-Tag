# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
  puts "Start seeding..."

  puts "Creating Users..."
  User.create(name: "John Doe", username: "@doeJohn", phone: 245789103140, password_digest:"$2a$12$2RM7hu.dACbKJq9EBSte3eoL7LDIP8G8p3Oo2UzyuVbCVRqYyJphi", avatar:"https://drive.google.com/file/d/1kToCMW54PQot2ukGlqHrkQ1f3A3ICClv/view?usp=sharing")
  User.create(name: "Luke Paul", username: "@lukepaul", phone: 245770011304,password_digest:"$2a$12$2RM7hu.dACbKJq9EBSte3eoL7LDIP8G8p3Oo2UzyuVbCVRqYyJphi", avatar:"https://drive.google.com/file/d/13stHeq4x-O7Wa3OfGU7Z78pG6P9DtxHk/view?usp=sharing")
  User.create(name: "Martin Odi", username: "@martinOdi", phone: 245770011333,password_digest:"$2a$12$2RM7hu.dACbKJq9EBSte3eoL7LDIP8G8p3Oo2UzyuVbCVRqYyJphi", avatar:"https://drive.google.com/file/d/15mGTWBOYLYM7XJsq9w52RmC1qrhmUjMJ/view?usp=sharing")
  User.create(name: "Lionel Messi", username: "@messi", phone: 245741103140,password_digest:"$2a$12$2RM7hu.dACbKJq9EBSte3eoL7LDIP8G8p3Oo2UzyuVbCVRqYyJphi", avatar:"https://drive.google.com/file/d/1ZQ2COF8QZPxtVOgpTpDy5JS0ovK8L_cU/view?usp=sharing")
  User.create(name: "Smith Rowe", username: "@emile", phone: 245741202240, password_digest:"$2a$12$2RM7hu.dACbKJq9EBSte3eoL7LDIP8G8p3Oo2UzyuVbCVRqYyJphi",avatar:"https://drive.google.com/file/d/1-DaeaV7Cg8jLP4v5VEK2SGKxPvtTPP8u/view?usp=sharing")


  puts "Creating Posts..."
  Post.create(description:"Anyone interested in a couch?, Reach out", user_id: 1, image:"https://drive.google.com/file/d/1zH9S18xK-hlbrX5jJ3PU3Ez-_4xJ2KIC/view?usp=sharing" )
  Post.create(description:"I'll be throwing away this bottles.Reach out if interested", user_id: 2, image:"https://drive.google.com/file/d/1_p1SC0hqKRgS0BOm9TWXQmZXbJNo-5Lb/view?usp=sharing" )
  Post.create(description:"Disposing some worn out tires, hmu!", user_id: 3, image:"https://drive.google.com/file/d/15FgFDFcyDszT2H4dII3pjQ6UQdm_E2jW/view?usp=sharing" )
  Post.create(description:"I want to do away with this glass bottles", user_id: 4, image:"https://drive.google.com/file/d/1CXrE5ExSxYKBdI_-FoIx2iMcYae19FYD/view?usp=sharing" )
  Post.create(description:"Scrap metals available, reach out", user_id: 5, image:"https://drive.google.com/file/d/1EF-92q_3aQIz2V7dLXh95F8xsX-WzcnQ/view?usp=sharing" )

  puts "Creating Tags..."
  Tag.create(name:"Wood", post_id:1)
  Tag.create(name:"Plastic", post_id:2)
  Tag.create(name:"Rubber", post_id:3)
  Tag.create(name:"Glass", post_id:4)
  Tag.create(name:"Metal", post_id:5)

  puts "Creating Trash..."
  Trash.create(description: "Disposed couch", image: "https://drive.google.com/file/d/1zH9S18xK-hlbrX5jJ3PU3Ez-_4xJ2KIC/view?usp=sharing", lattitude:-1.2139534971111, longitude:36.90261266498959, user_id:1)
  Trash.create(description: "Glass bottles", image: "https://drive.google.com/file/d/1_p1SC0hqKRgS0BOm9TWXQmZXbJNo-5Lb/view?usp=sharing", lattitude:-1.2287130213198558, longitude:36.87926671716787, user_id:2)
  Trash.create(description: "Used tires", image: "https://drive.google.com/file/d/15FgFDFcyDszT2H4dII3pjQ6UQdm_E2jW/view?usp=sharing", lattitude:-1.2826017471420281, longitude:36.8442477954353, user_id:3)
  Trash.create(description: "Disposed glass bottles", image: "https://drive.google.com/file/d/1CXrE5ExSxYKBdI_-FoIx2iMcYae19FYD/view?usp=sharing", lattitude:-1.2692154798395958, longitude:36.89643285527208, user_id:4)
  Trash.create(description: "Metals", image: "https://drive.google.com/file/d/1EF-92q_3aQIz2V7dLXh95F8xsX-WzcnQ/view?usp=sharing", lattitude:-1.268872241302198, longitude:36.85763738315658, user_id:5)
  
  puts "Done seeding"