############ Create 5 users
User.create(first_name: 'Isaac', last_name: "La", email: "isaac@dojo.com")
User.create(first_name: 'Rong', last_name: "Ma", email: "rong@dojo.com")
User.create(first_name: 'Maysun', last_name: "La", email: "maysun@dojo.com")
User.create(first_name: 'Ernest', last_name: "Smith", email: "ernest@dojo.com")
User.create(first_name: 'Simon', last_name: "Kaine", email: "simon@dojo.com")

2.3.1 :023 > User.all
  User Load (3.5ms)  SELECT "users".* FROM "users"
+----+------------+-----------+-----------------+-------------------------+-------------------------+
| id | first_name | last_name | email           | created_at              | updated_at              |
+----+------------+-----------+-----------------+-------------------------+-------------------------+
| 1  | Isaac      | La        | isaac@dojo.com  | 2017-04-07 06:10:07 UTC | 2017-04-07 06:10:07 UTC |
| 2  | Rong       | Ma        | rong@dojo.com   | 2017-04-07 06:10:07 UTC | 2017-04-07 06:10:07 UTC |
| 3  | Maysun     | La        | maysun@dojo.com | 2017-04-07 06:10:07 UTC | 2017-04-07 06:10:07 UTC |
| 4  | Ernest     | Smith     | ernest@dojo.com | 2017-04-07 06:10:07 UTC | 2017-04-07 06:10:07 UTC |
| 5  | Simon      | Kaine     | simon@dojo.com  | 2017-04-07 06:10:44 UTC | 2017-04-07 06:10:44 UTC |
+----+------------+-----------+-----------------+-------------------------+-------------------------+
5 rows in set

############ Create 5 blogs
Blog.create(name: "Soccer", description: "A fun soccer blog")
Blog.create(name: "Sports Car", description: "We all love sexy racing vehicles")
Blog.create(name: "Coding Language", description: "We all love coding, but which language?")
Blog.create(name: "Cosmos", description: "Ever wondering the beauty of cosmos?")
Blog.create(name: "Foodie", description: "We all love yummy food, here is the place.")

2.3.1 :031 >   Blog.all
  Blog Load (3.8ms)  SELECT "blogs".* FROM "blogs"
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
| id | name            | description                                | created_at              | updated_at              |
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
| 1  | Soccer          | A fun soccer blog                          | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 2  | Sports Car      | We all love sexy racing vehicles           | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 3  | Coding Language | We all love coding, but which language?    | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 4  | Cosmos          | Ever wondering the beauty of cosmos?       | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 5  | Foodie          | We all love yummy food, here is the place. | 2017-04-07 06:13:41 UTC | 2017-04-07 06:13:41 UTC |
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
5 rows in set

############ Have the first 3 blogs be owned by the first user
User.first.owners.create(blog:Blog.first)
Owner.create(blog:Blog.find(2), user:User.find(1))
Blog.find(3).owners.create(user:User.first)

2.3.1 :039 > Owner.all
  Owner Load (3.9ms)  SELECT "owners".* FROM "owners"
+----+---------+---------+-------------------------+-------------------------+
| id | user_id | blog_id | created_at              | updated_at              |
+----+---------+---------+-------------------------+-------------------------+
| 1  | 1       | 1       | 2017-04-07 06:20:37 UTC | 2017-04-07 06:20:37 UTC |
| 2  | 1       | 2       | 2017-04-07 06:21:29 UTC | 2017-04-07 06:21:29 UTC |
| 3  | 1       | 3       | 2017-04-07 06:22:33 UTC | 2017-04-07 06:22:33 UTC |
+----+---------+---------+-------------------------+-------------------------+
3 rows in set

############ Have the 4th blog you create be owned by the second user
# Method 1: Blog.find(4).owners.create(user:User.find(2))
# Method 2: User.find(2).owners.create(blog:Blog.find(4))
# Method 3:
Owner.create(blog:Blog.find(4), user:User.find(2))

  Blog Load (3.5ms)  SELECT  "blogs".* FROM "blogs" WHERE "blogs"."id" = ? LIMIT 1  [["id", 4]]
  User Load (1.9ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
   (0.1ms)  begin transaction
  SQL (5.2ms)  INSERT INTO "owners" ("blog_id", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["blog_id", 4], ["user_id", 2], ["created_at", "2017-04-07 06:24:53.620046"], ["updated_at", "2017-04-07 06:24:53.620046"]]
   (10.1ms)  commit transaction
+----+---------+---------+-------------------------+-------------------------+
| id | user_id | blog_id | created_at              | updated_at              |
+----+---------+---------+-------------------------+-------------------------+
| 4  | 2       | 4       | 2017-04-07 06:24:53 UTC | 2017-04-07 06:24:53 UTC |
+----+---------+---------+-------------------------+-------------------------+

############ Have the 5th blog you create be owned by the last user
User.last.owners.create(blog:Blog.find(5))

  User Load (3.4ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" DESC LIMIT 1
  Blog Load (2.0ms)  SELECT  "blogs".* FROM "blogs" WHERE "blogs"."id" = ? LIMIT 1  [["id", 5]]
   (0.1ms)  begin transaction
  SQL (4.8ms)  INSERT INTO "owners" ("blog_id", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["blog_id", 5], ["user_id", 5], ["created_at", "2017-04-07 06:27:08.952461"], ["updated_at", "2017-04-07 06:27:08.952461"]]
   (3.0ms)  commit transaction
+----+---------+---------+-------------------------+-------------------------+
| id | user_id | blog_id | created_at              | updated_at              |
+----+---------+---------+-------------------------+-------------------------+
| 5  | 5       | 5       | 2017-04-07 06:27:08 UTC | 2017-04-07 06:27:08 UTC |
+----+---------+---------+-------------------------+-------------------------+
1 row in set

############ Have the third user own all of the blogs that were created.
Blog.all.update_all.owners(user:User.find(3))

2.3.1 :048 > Owner.all
  Owner Load (3.9ms)  SELECT "owners".* FROM "owners"
+----+---------+---------+-------------------------+-------------------------+
| id | user_id | blog_id | created_at              | updated_at              |
+----+---------+---------+-------------------------+-------------------------+
| 1  | 3       | 1       | 2017-04-07 06:20:37 UTC | 2017-04-07 06:20:37 UTC |
| 2  | 3       | 2       | 2017-04-07 06:21:29 UTC | 2017-04-07 06:21:29 UTC |
| 3  | 3       | 3       | 2017-04-07 06:22:33 UTC | 2017-04-07 06:22:33 UTC |
| 4  | 3       | 4       | 2017-04-07 06:24:53 UTC | 2017-04-07 06:24:53 UTC |
| 5  | 3       | 5       | 2017-04-07 06:27:08 UTC | 2017-04-07 06:27:08 UTC |
+----+---------+---------+-------------------------+-------------------------+
5 rows in set
#### Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails.
Post.create(user:User.first, blog:Blog.find(2), title:"Audi R8", content:"Audi R8 is very sexy looking, just released a few years ago.")
Post.create(user:User.first, blog:Blog.find(2), title:"GTR", content:"GTR is a great racing car from Japan.")
Post.create(user:User.first, blog:Blog.find(2), title:"Ferarri", content:"The Italian brand has the best racing cars.")

2.3.1 :061 > Post.all
  Post Load (3.9ms)  SELECT "posts".* FROM "posts"
+----+---------+--------------------------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | title   | content                                                      | user_id | blog_id | created_at              | updated_at              |
+----+---------+--------------------------------------------------------------+---------+---------+-------------------------+-------------------------+
| 1  | Audi R8 | Audi R8 is very sexy looking, just released a few years ago. | 1       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 06:41:54 UTC |
| 2  | GTR     | GTR is a great racing car from Japan.                        | 1       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 06:41:54 UTC |
| 3  | Ferarri | The Italian brand has the best racing cars.                  | 1       | 2       | 2017-04-07 06:41:58 UTC | 2017-04-07 06:41:58 UTC |

############ Have the second user create 5 posts for the last Blog.
Post.create(user:User.find(2), blog:Blog.last, title:"Chinese Food", content:"Chinese food is the best. It has long history.")
Post.create(user:User.find(2), blog:Blog.last, title:"Amrican Food", content:"The classic American food is actually really good.")
Post.create(user:User.find(2), blog:Blog.last, title:"Spicy Food", content:"Chong Qing hot pot is so spicy, but it is so popular.")
Post.create(user:User.find(2), blog:Blog.last, title:"Korean BBQ", content:"Korean BBQ is very yummy, but it makes your clothes very smoky.")
Post.create(user:User.find(2), blog:Blog.last, title:"Beef Noodles", content:"The best beef noodles is from LANZHOU, my favorite.")

2.3.1 :067 > Post.all
  Post Load (3.9ms)  SELECT "posts".* FROM "posts"
+----+--------------+-----------------------------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | title        | content                                                         | user_id | blog_id | created_at              | updated_at              |
+----+--------------+-----------------------------------------------------------------+---------+---------+-------------------------+-------------------------+
| 1  | Audi R8      | Audi R8 is very sexy looking, just released a few years ago.    | 1       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 06:41:54 UTC |
| 2  | GTR          | GTR is a great racing car from Japan.                           | 1       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 06:41:54 UTC |
| 3  | Ferarri      | The Italian brand has the best racing cars.                     | 1       | 2       | 2017-04-07 06:41:58 UTC | 2017-04-07 06:41:58 UTC |
| 4  | Chinese Food | Chinese food is the best. It has long history.                  | 2       | 5       | 2017-04-07 06:45:44 UTC | 2017-04-07 06:45:44 UTC |
| 5  | Amrican Food | The classic American food is actually really good.              | 2       | 5       | 2017-04-07 06:45:44 UTC | 2017-04-07 06:45:44 UTC |
| 6  | Spicy Food   | Chong Qing hot pot is so spicy, but it is so popular.           | 2       | 5       | 2017-04-07 06:45:44 UTC | 2017-04-07 06:45:44 UTC |
| 7  | Korean BBQ   | Korean BBQ is very yummy, but it makes your clothes very smoky. | 2       | 5       | 2017-04-07 06:45:44 UTC | 2017-04-07 06:45:44 UTC |
| 8  | Beef Noodles | The best beef noodles is from LANZHOU, my favorite.             | 2       | 5       | 2017-04-07 06:45:48 UTC | 2017-04-07 06:45:48 UTC |
+----+--------------+-----------------------------------------------------------------+---------+---------+-------------------------+-------------------------+

############ Have the 3rd user create several posts for different blogs.
Post.create(user:User.find(3),blog:Blog.find(3), title:"Ruby",content:"Ruby is one of the most popular languages")
Post.create(user:User.find(3),blog:Blog.find(3), title:"Python",content:"Python is a very powerful langueage")
Post.create(user:User.find(3),blog:Blog.find(1), title:"UEFA",content:"UEFA Champion is very competitive")
Post.create(user:User.find(3),blog:Blog.find(1), title:"Robert Baggio",content:"Robert Baggio is my favorite player ever")
Post.create(user:User.find(3),blog:Blog.find(1), title:"World Cup",content:"World Cup will have 42 teams playing in the future")
Post.create(user:User.find(3),blog:Blog.find(4), title:"The Space",content:"Can we go to another galaxy?")

2.3.1 :080 > Post.where(user_id:3)
  Post Load (3.2ms)  SELECT "posts".* FROM "posts" WHERE "posts"."user_id" = ?  [["user_id", 3]]
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | title         | content                                            | user_id | blog_id | created_at              | updated_at              |
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
| 9  | Ruby          | Ruby is one of the most popular languages          | 3       | 3       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 10 | Python        | Python is a very powerful langueage                | 3       | 3       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 11 | UEFA          | UEFA Champion is very competitive                  | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 12 | Robert Baggio | Robert Baggio is my favorite player ever           | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 13 | World Cup     | World Cup will have 42 teams playing in the future | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 14 | The Space     | Can we go to another galaxy?                       | 3       | 4       | 2017-04-07 06:52:36 UTC | 2017-04-07 06:52:36 UTC |
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
6 rows in set


############ Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create(user:User.find(3),post:Post.find(1),author:"Maysun",message:"Wow, I love Audi R8")
Message.create(user:User.find(3),post:Post.find(1),author:"Maysun",message:"I am wondering how much will it be?")
Message.create(user:User.find(3),post:Post.find(2),author:"Maysun",message:"This GTR is very fast.")
Message.create(user:User.find(3),post:Post.find(2),author:"Maysun",message:"Is th GTR more expensive than R8?")
Message.create(user:User.find(3),post:Post.find(2),author:"Maysun",message:"I think GTR is going to use a lot of gas.")

2.3.1 :088 > Message.all
  Message Load (4.3ms)  SELECT "messages".* FROM "messages"
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | author | message                                   | user_id | post_id | created_at              | updated_at              |
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+
| 1  | Maysun | Wow, I love Audi R8                       | 3       | 1       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 2  | Maysun | I am wondering how much will it be?       | 3       | 1       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 3  | Maysun | This GTR is very fast.                    | 3       | 2       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 4  | Maysun | Is th GTR more expensive than R8?         | 3       | 2       | 2017-04-07 06:57:26 UTC | 2017-04-07 06:57:26 UTC |
| 5  | Maysun | I think GTR is going to use a lot of gas. | 3       | 2       | 2017-04-07 06:57:48 UTC | 2017-04-07 06:57:48 UTC |
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+

############ Have the 4th user create 3 messages for the last post you created.
Message.create(user:User.find(4), post:Post.last, author:"Ernest", message:"We can go through a wormhole.")
Message.create(user:User.find(4), post:Post.last, author:"Ernest", message:"We have to travel faster than light speed.")
Message.create(user:User.find(4), post:Post.last, author:"Ernest", message:"The movie interstella is great!")

2.3.1 :093 > Message.where(user_id:4)
  Message Load (3.4ms)  SELECT "messages".* FROM "messages" WHERE "messages"."user_id" = ?  [["user_id", 4]]
+----+--------+--------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | author | message                                    | user_id | post_id | created_at              | updated_at              |
+----+--------+--------------------------------------------+---------+---------+-------------------------+-------------------------+
| 6  | Ernest | We can go through a wormhole.              | 4       | 14      | 2017-04-07 07:00:51 UTC | 2017-04-07 07:00:51 UTC |
| 7  | Ernest | We have to travel faster than light speed. | 4       | 14      | 2017-04-07 07:00:51 UTC | 2017-04-07 07:00:51 UTC |
| 8  | Ernest | The movie interstella is great!            | 4       | 14      | 2017-04-07 07:00:52 UTC | 2017-04-07 07:00:52 UTC |
+----+--------+--------------------------------------------+---------+---------+-------------------------+-------------------------+

############ Change the owner of the 2nd post to the last user.
Post.find(2).update(user:User.last)

2.3.1 :097 > Post.find(2)
  Post Load (2.6ms)  SELECT  "posts".* FROM "posts" WHERE "posts"."id" = ? LIMIT 1  [["id", 2]]
+----+-------+---------------------------------------+---------+---------+-------------------------+-------------------------+
| id | title | content                               | user_id | blog_id | created_at              | updated_at              |
+----+-------+---------------------------------------+---------+---------+-------------------------+-------------------------+
| 2  | GTR   | GTR is a great racing car from Japan. | 5       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 07:03:04 UTC |
+----+-------+---------------------------------------+---------+---------+-------------------------+-------------------------+
1 row in set


############ Change the 2nd post's content to be something else.
Post.find(2).update(content:"GTR update...info")

2.3.1 :101 > Post.find(2)
  Post Load (3.7ms)  SELECT  "posts".* FROM "posts" WHERE "posts"."id" = ? LIMIT 1  [["id", 2]]
+----+-------+-------------------+---------+---------+-------------------------+-------------------------+
| id | title | content           | user_id | blog_id | created_at              | updated_at              |
+----+-------+-------------------+---------+---------+-------------------------+-------------------------+
| 2  | GTR   | GTR update...info | 5       | 2       | 2017-04-07 06:41:54 UTC | 2017-04-07 07:04:46 UTC |
+----+-------+-------------------+---------+---------+-------------------------+-------------------------+


############ Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs

2.3.1 :102 > User.find(3).blogs
  User Load (4.2ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 3]]
  Blog Load (2.4ms)  SELECT "blogs".* FROM "blogs" INNER JOIN "owners" ON "blogs"."id" = "owners"."blog_id" WHERE "owners"."user_id" = ?  [["user_id", 3]]
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
| id | name            | description                                | created_at              | updated_at              |
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
| 1  | Soccer          | A fun soccer blog                          | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 2  | Sports Car      | We all love sexy racing vehicles           | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 3  | Coding Language | We all love coding, but which language?    | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 4  | Cosmos          | Ever wondering the beauty of cosmos?       | 2017-04-07 06:13:40 UTC | 2017-04-07 06:13:40 UTC |
| 5  | Foodie          | We all love yummy food, here is the place. | 2017-04-07 06:13:41 UTC | 2017-04-07 06:13:41 UTC |
+----+-----------------+--------------------------------------------+-------------------------+-------------------------+
5 rows in set

############ Retrieve all posts that were created by the 3rd user
User.find(3).posts

2.3.1 :106 > User.find(3).posts
  User Load (3.1ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 3]]
  Post Load (1.8ms)  SELECT "posts".* FROM "posts" WHERE "posts"."user_id" = ?  [["user_id", 3]]
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | title         | content                                            | user_id | blog_id | created_at              | updated_at              |
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
| 9  | Ruby          | Ruby is one of the most popular languages          | 3       | 3       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 10 | Python        | Python is a very powerful langueage                | 3       | 3       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 11 | UEFA          | UEFA Champion is very competitive                  | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 12 | Robert Baggio | Robert Baggio is my favorite player ever           | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 13 | World Cup     | World Cup will have 42 teams playing in the future | 3       | 1       | 2017-04-07 06:52:35 UTC | 2017-04-07 06:52:35 UTC |
| 14 | The Space     | Can we go to another galaxy?                       | 3       | 4       | 2017-04-07 06:52:36 UTC | 2017-04-07 06:52:36 UTC |
+----+---------------+----------------------------------------------------+---------+---------+-------------------------+-------------------------+
6 rows in set

############ Retrieve all messages left by the 3rd user
User.find(3).messages

2.3.1 :109 > User.find(3).messages
  User Load (2.9ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 3]]
  Message Load (1.7ms)  SELECT "messages".* FROM "messages" WHERE "messages"."user_id" = ?  [["user_id", 3]]
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+
| id | author | message                                   | user_id | post_id | created_at              | updated_at              |
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+
| 1  | Maysun | Wow, I love Audi R8                       | 3       | 1       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 2  | Maysun | I am wondering how much will it be?       | 3       | 1       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 3  | Maysun | This GTR is very fast.                    | 3       | 2       | 2017-04-07 06:57:24 UTC | 2017-04-07 06:57:24 UTC |
| 4  | Maysun | Is th GTR more expensive than R8?         | 3       | 2       | 2017-04-07 06:57:26 UTC | 2017-04-07 06:57:26 UTC |
| 5  | Maysun | I think GTR is going to use a lot of gas. | 3       | 2       | 2017-04-07 06:57:48 UTC | 2017-04-07 06:57:48 UTC |
+----+--------+-------------------------------------------+---------+---------+-------------------------+-------------------------+
5 rows in set

############ Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user, :blog).where(blog:Blog.find(5)).select('title','content','first_name','last_name')

  Blog Load (5.7ms)  SELECT  "blogs".* FROM "blogs" WHERE "blogs"."id" = ? LIMIT 1  [["id", 5]]
  Post Load (7.2ms)  SELECT "posts"."title", "posts"."content", first_name, last_name FROM "posts" INNER JOIN "users" ON "users"."id" = "posts"."user_id" INNER JOIN "blogs" ON "blogs"."id" = "posts"."blog_id" WHERE "posts"."blog_id" = 5
+----+--------------+-----------------------------------------------------------------+------------+-----------+
| id | title        | content                                                         | first_name | last_name |
+----+--------------+-----------------------------------------------------------------+------------+-----------+
|    | Chinese Food | Chinese food is the best. It has long history.                  | Rong       | Ma        |
|    | Amrican Food | The classic American food is actually really good.              | Rong       | Ma        |
|    | Spicy Food   | Chong Qing hot pot is so spicy, but it is so popular.           | Rong       | Ma        |
|    | Korean BBQ   | Korean BBQ is very yummy, but it makes your clothes very smoky. | Rong       | Ma        |
|    | Beef Noodles | The best beef noodles is from LANZHOU, my favorite.             | Rong       | Ma        |
+----+--------------+-----------------------------------------------------------------+------------+-----------+
5 rows in set

############ Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages 
Message.joins(:user).where(post:Blog.find(5)).select("*")

  Blog Load (1.8ms)  SELECT  "blogs".* FROM "blogs" WHERE "blogs"."id" = ? LIMIT 1  [["id", 5]]
  Message Load (3.6ms)  SELECT * FROM "messages" INNER JOIN "users" ON "users"."id" = "messages"."user_id" WHERE "messages"."post_id" = 5
 => #<ActiveRecord::Relation []> 

 # Blog 5 has post but no message

############ Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.users

  Blog Load (3.6ms)  SELECT  "blogs".* FROM "blogs"  ORDER BY "blogs"."id" ASC LIMIT 1
  User Load (3.0ms)  SELECT "users".* FROM "users" INNER JOIN "owners" ON "users"."id" = "owners"."user_id" WHERE "owners"."blog_id" = ?  [["blog_id", 1]]
+----+------------+-----------+-----------------+-------------------------+-------------------------+
| id | first_name | last_name | email           | created_at              | updated_at              |
+----+------------+-----------+-----------------+-------------------------+-------------------------+
| 3  | Maysun     | La        | maysun@dojo.com | 2017-04-07 06:10:07 UTC | 2017-04-07 06:10:07 UTC |
+----+------------+-----------+-----------------+-------------------------+-------------------------+
1 row in set

############ Change it so that the first blog is no longer owned by the first user.
Owner.find_by(blog:Blog.find(1)).update(user:User.second)

2.3.1 :017 > Owner.find_by(blog:Blog.find(1))
  Blog Load (3.5ms)  SELECT  "blogs".* FROM "blogs" WHERE "blogs"."id" = ? LIMIT 1  [["id", 1]]
  Owner Load (2.7ms)  SELECT  "owners".* FROM "owners" WHERE "owners"."blog_id" = 1 LIMIT 1
+----+---------+---------+-------------------------+-------------------------+
| id | user_id | blog_id | created_at              | updated_at              |
+----+---------+---------+-------------------------+-------------------------+
| 1  | 2       | 1       | 2017-04-07 06:20:37 UTC | 2017-04-07 07:50:36 UTC |
+----+---------+---------+-------------------------+-------------------------+
1 row in set
