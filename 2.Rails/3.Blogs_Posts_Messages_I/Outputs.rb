################################################ Creating some entry in blogs table ###############################################

2.3.1 :002 > Blog.create(name:"Soccer",description:"This is a blog talks about soccer")
2.3.1 :004 > Blog.create(name:"Car",description:"This is a blog talks about sports cars")
2.3.1 :005 > Blog.create(name:"Ruby",description:"Ruby blog is for the ruby learners")
2.3.1 :006 > Blog.create(name:"Python",description:"Python is a powerful language, you will read some intro here")
2.3.1 :007 > Blog.create(name:"JavaSrcipt",description:"This is a blog about JavaScript")
2.3.1 :008 > Blog.create(name:"HTML",description:"HTML blog shows you how to layout your webpage")
2.3.1 :009 > Blog.create(name:"CSS",description:"Greate blog shows you how to style your webpage")
2.3.1 :010 > Blog.create(name:"GO",description:"GO language, a GOOGLE developed language")
2.3.1 :011 > Blog.all
  Blog Load (3.5ms)  SELECT "blogs".* FROM "blogs"
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| id | name       | description                                                  | created_at              | updated_at              |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| 1  | Soccer     | This is a blog talks about soccer                            | 2017-04-06 19:04:31 UTC | 2017-04-06 19:04:31 UTC |
| 2  | Car        | This is a blog talks about sports cars                       | 2017-04-06 19:05:12 UTC | 2017-04-06 19:05:12 UTC |
| 3  | Ruby       | Ruby blog is for the ruby learners                           | 2017-04-06 19:05:57 UTC | 2017-04-06 19:05:57 UTC |
| 4  | Python     | Python is a powerful language, you will read some intro here | 2017-04-06 19:06:31 UTC | 2017-04-06 19:06:31 UTC |
| 5  | JavaSrcipt | This is a blog about JavaScript                              | 2017-04-06 19:07:11 UTC | 2017-04-06 19:07:11 UTC |
| 6  | HTML       | HTML blog shows you how to layout your webpage               | 2017-04-06 19:07:40 UTC | 2017-04-06 19:07:40 UTC |
| 7  | CSS        | Greate blog shows you how to style your webpage              | 2017-04-06 19:08:09 UTC | 2017-04-06 19:08:09 UTC |
| 8  | GO         | GO language, a GOOGLE developed language                     | 2017-04-06 19:08:50 UTC | 2017-04-06 19:08:50 UTC |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
8 rows in set



###################################### Creating some posts in posts table ###########################################

2.3.1 :013 > Post.create(title:"UEFA Championshipt",content:"UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,", blog:Blog.find(1))
2.3.1 :005 > Post.create(title:"World Cup", content:"There are 32 teams from all overthe world is playing for World Cup", blog:Blog.find(1))
2.3.1 :008 > Post.create(title:"Robert Baggio", content:"My personal favorate soccer player. He is the best, but retired in 2004", blog:Blog.find(1))
2.3.1 :013 > Post.create(title:"GTR",content:"This is a sports car made in Japan.Super cool",blog:Blog.find(2))
2.3.1 :014 > Post.create(title:"Audi R8",content:"Audi releases the sports car R8, very sexy looking",blog:Blog.find(2))
2.3.1 :012 > Post.create(title:"Nissan Z350",content:"A popular car among young people, cheap, just sexy looking", blog:Blog.find(2))
2.3.1 :014 > Post.create(title:"Ruby on Rails", content:"Rails is built based on Ruby and provide a very powerful framework", blog:Blog.find(3))
2.3.1 :015 > Post.create(title:"Ruby Gem", content:"Gem is a library, a package of methods that developed in Ruby, allow user to use", blog:Blog.find(3))
2.3.1 :016 > Post.create(title:"Python Flask", content:"Flast is a local framework that work with python.", blog:Blog.find(4))
2.3.1 :018 > Post.create(title:"Python Django",content:"Django is a very popular framework on python", blog:Blog.find(4))
2.3.1 :021 > Post.create(title:"Web FrontEnd",content:"JavaScript use semi-colon, you do NOT want to miss them in your code",blog:Blog.find(5))
2.3.1 :023 > Post.create(title:"HTML Your page", content:"HTML is one of the three languages that web pages read", blog:Blog.find(6))
2.3.1 :025 > Post.create(title:"Styling", content:"CSS is used for stying your webpage, make them pretty", blog:Blog.find(7))
2.3.1 :027 > Post.create(title:"Google Language", content:"Go is developed by google. that is why it is called GO", blog:Blog.find(8))
2.3.1 :028 > Post.all
  Post Load (3.9ms)  SELECT "posts".* FROM "posts"
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title              | content                                                                                                             | blog_id | created_at              | updated_at              |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 1  | UEFA Championshipt | UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game, | 1       | 2017-04-06 19:16:54 UTC | 2017-04-06 19:16:54 UTC |
| 2  | World Cup          | There are 32 teams from all overthe world is playing for World Cup                                                  | 1       | 2017-04-06 19:38:02 UTC | 2017-04-06 19:38:02 UTC |
| 3  | Robert Baggio      | My personal favorate soccer player. He is the best, but retired in 2004                                             | 1       | 2017-04-06 19:40:12 UTC | 2017-04-06 19:40:12 UTC |
| 4  | Audi R8            | Audi releases the sports car R8, very sexy looking                                                                  | 2       | 2017-04-06 19:43:55 UTC | 2017-04-06 19:43:55 UTC |
| 5  | Nissan Z350        | A popular car among young people, cheap, just sexy looking                                                          | 2       | 2017-04-06 19:51:58 UTC | 2017-04-06 19:51:58 UTC |
| 6  | Ruby on Rails      | Rails is built based on Ruby and provide a very powerful framework                                                  | 3       | 2017-04-06 19:53:32 UTC | 2017-04-06 19:53:32 UTC |
| 7  | Ruby Gem           | Gem is a library, a package of methods that developed in Ruby, allow user to use                                    | 3       | 2017-04-06 19:54:49 UTC | 2017-04-06 19:54:49 UTC |
| 8  | Python Flask       | Flast is a local framework that work with python.                                                                   | 4       | 2017-04-06 19:55:55 UTC | 2017-04-06 19:55:55 UTC |
| 9  | Python Django      | Django is a very popular framework on python                                                                        | 4       | 2017-04-06 20:17:04 UTC | 2017-04-06 20:17:04 UTC |
| 10 | Web FrontEnd       | JavaScript use semi-colon, you do NOT want to miss them in your code                                                | 5       | 2017-04-06 20:23:33 UTC | 2017-04-06 20:23:33 UTC |
| 11 | HTML Your page     | HTML is one of the three languages that web pages read                                                              | 6       | 2017-04-06 20:25:00 UTC | 2017-04-06 20:25:00 UTC |
| 12 | Styling            | CSS is used for stying your webpage, make them pretty                                                               | 7       | 2017-04-06 20:26:10 UTC | 2017-04-06 20:26:10 UTC |
| 13 | Google Language    | Go is developed by google. that is why it is called GO                                                              | 8       | 2017-04-06 20:27:27 UTC | 2017-04-06 20:27:27 UTC |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
13 rows in set


########################################## Creating messages in for the first post ###########################

2.3.1 :030 > Message.create(author:"Isaac",message:"UEFA championship is very competitive. I enjoy watching all the games", post:Post.find(1))
2.3.1 :031 > Message.create(author:"Edurado", message:"I am not a soccer fan , i dont know what UEFA is",post:Post.find(1))
2.3.1 :032 > Message.create(author:"Briggs", message:"I am an Arsenal fan, I wish Arsenal can win the UEFA championship one day", post:Post.find(1))
2.3.1 :034 > Message.create(author:"Richard", message:"I am Real Mardid fan, but I know we can beat FC Barcelona", post:Post.find(1))
2.3.1 :035 > Message.all
  Message Load (4.5ms)  SELECT "messages".* FROM "messages"
+----+---------+---------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | author  | message                                                                   | post_id | created_at              | updated_at              |
+----+---------+---------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 1  | Isaac   | UEFA championship is very competitive. I enjoy watching all the games     | 1       | 2017-04-06 20:31:41 UTC | 2017-04-06 20:31:41 UTC |
| 2  | Edurado | I am not a soccer fan , i dont know what UEFA is                          | 1       | 2017-04-06 20:36:25 UTC | 2017-04-06 20:36:25 UTC |
| 3  | Briggs  | I am an Arsenal fan, I wish Arsenal can win the UEFA championship one day | 1       | 2017-04-06 20:38:38 UTC | 2017-04-06 20:38:38 UTC |
| 4  | Richard | I am Real Mardid fan, but I know we can beat FC Barcelona                 | 1       | 2017-04-06 20:42:31 UTC | 2017-04-06 20:42:31 UTC |
+----+---------+---------------------------------------------------------------------------+---------+-------------------------+-------------------------+
4 rows in set



######################################## Retrieve all post for the first blog ########################################
###### Method 1 ###############
2.3.1 :037 > Blog.first.posts
  Blog Load (4.0ms)  SELECT  "blogs".* FROM "blogs"  ORDER BY "blogs"."id" ASC LIMIT 1
  Post Load (3.9ms)  SELECT "posts".* FROM "posts" WHERE "posts"."blog_id" = ?  [["blog_id", 1]]
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title              | content                                                                                                             | blog_id | created_at              | updated_at              |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 1  | UEFA Championshipt | UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game, | 1       | 2017-04-06 19:16:54 UTC | 2017-04-06 19:16:54 UTC |
| 2  | World Cup          | There are 32 teams from all overthe world is playing for World Cup                                                  | 1       | 2017-04-06 19:38:02 UTC | 2017-04-06 19:38:02 UTC |
| 3  | Robert Baggio      | My personal favorate soccer player. He is the best, but retired in 2004                                             | 1       | 2017-04-06 19:40:12 UTC | 2017-04-06 19:40:12 UTC |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
3 rows in set

####### Method 2 ########
2.3.1 :043 > Post.where(blog_id:1)
  Post Load (3.6ms)  SELECT "posts".* FROM "posts" WHERE "posts"."blog_id" = ?  [["blog_id", 1]]
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title              | content                                                                                                             | blog_id | created_at              | updated_at              |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 1  | UEFA Championshipt | UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game, | 1       | 2017-04-06 19:16:54 UTC | 2017-04-06 19:16:54 UTC |
| 2  | World Cup          | There are 32 teams from all overthe world is playing for World Cup                                                  | 1       | 2017-04-06 19:38:02 UTC | 2017-04-06 19:38:02 UTC |
| 3  | Robert Baggio      | My personal favorate soccer player. He is the best, but retired in 2004                                             | 1       | 2017-04-06 19:40:12 UTC | 2017-04-06 19:40:12 UTC |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
3 rows in set
2.3.1 :044 > 



################### retrieve all posts for the last blog (sorted by title in the DESC order)###########################
## My last Blog has only one post, I will retrieve all posts for the first blog and sort by title
2.3.1 :047 > Blog.first.posts.order('title DESC')
  Blog Load (4.0ms)  SELECT  "blogs".* FROM "blogs"  ORDER BY "blogs"."id" ASC LIMIT 1
  Post Load (2.1ms)  SELECT "posts".* FROM "posts" WHERE "posts"."blog_id" = ?  ORDER BY title DESC  [["blog_id", 1]]
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title              | content                                                                                                             | blog_id | created_at              | updated_at              |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 2  | World Cup          | There are 32 teams from all overthe world is playing for World Cup                                                  | 1       | 2017-04-06 19:38:02 UTC | 2017-04-06 19:38:02 UTC |
| 1  | UEFA Championshipt | UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game, | 1       | 2017-04-06 19:16:54 UTC | 2017-04-06 19:16:54 UTC |
| 3  | Robert Baggio      | My personal favorate soccer player. He is the best, but retired in 2004                                             | 1       | 2017-04-06 19:40:12 UTC | 2017-04-06 19:40:12 UTC |
+----+--------------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
3 rows in set


########################################## Update first post title ######################################
2.3.1 :050 > Post.find(1).update(title:"UEFA Champion")
2.3.1 :053 > Post.find(1)
  Post Load (2.7ms)  SELECT  "posts".* FROM "posts" WHERE "posts"."id" = ? LIMIT 1  [["id", 1]]
+----+---------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title         | content                                                                                                             | blog_id | created_at              | updated_at              |
+----+---------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 1  | UEFA Champion | UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game,UEFA has the best game, | 1       | 2017-04-06 19:16:54 UTC | 2017-04-06 20:53:44 UTC |
+----+---------------+---------------------------------------------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
1 row in set


######################################### delete the third post (have the model automatically delete all messages associated with the third post when you delete the third post).
# in your post.rb file, add:
#  has_many :messages, dependent: :destroy
# reload! in rails console

#My third post has no messages, i will delete my first post, which will delete the four messages associated to it 

2.3.1 :056 > Post.find(1).destroy
2.3.1 :057 > Post.all
  Post Load (48.9ms)  SELECT "posts".* FROM "posts"
+----+-----------------+----------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| id | title           | content                                                                          | blog_id | created_at              | updated_at              |
+----+-----------------+----------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
| 2  | World Cup       | There are 32 teams from all overthe world is playing for World Cup               | 1       | 2017-04-06 19:38:02 UTC | 2017-04-06 19:38:02 UTC |
| 3  | Robert Baggio   | My personal favorate soccer player. He is the best, but retired in 2004          | 1       | 2017-04-06 19:40:12 UTC | 2017-04-06 19:40:12 UTC |
| 4  | Audi R8         | Audi releases the sports car R8, very sexy looking                               | 2       | 2017-04-06 19:43:55 UTC | 2017-04-06 19:43:55 UTC |
| 5  | Nissan Z350     | A popular car among young people, cheap, just sexy looking                       | 2       | 2017-04-06 19:51:58 UTC | 2017-04-06 19:51:58 UTC |
| 6  | Ruby on Rails   | Rails is built based on Ruby and provide a very powerful framework               | 3       | 2017-04-06 19:53:32 UTC | 2017-04-06 19:53:32 UTC |
| 7  | Ruby Gem        | Gem is a library, a package of methods that developed in Ruby, allow user to use | 3       | 2017-04-06 19:54:49 UTC | 2017-04-06 19:54:49 UTC |
| 8  | Python Flask    | Flast is a local framework that work with python.                                | 4       | 2017-04-06 19:55:55 UTC | 2017-04-06 19:55:55 UTC |
| 9  | Python Django   | Django is a very popular framework on python                                     | 4       | 2017-04-06 20:17:04 UTC | 2017-04-06 20:17:04 UTC |
| 10 | Web FrontEnd    | JavaScript use semi-colon, you do NOT want to miss them in your code             | 5       | 2017-04-06 20:23:33 UTC | 2017-04-06 20:23:33 UTC |
| 11 | HTML Your page  | HTML is one of the three languages that web pages read                           | 6       | 2017-04-06 20:25:00 UTC | 2017-04-06 20:25:00 UTC |
| 12 | Styling         | CSS is used for stying your webpage, make them pretty                            | 7       | 2017-04-06 20:26:10 UTC | 2017-04-06 20:26:10 UTC |
| 13 | Google Language | Go is developed by google. that is why it is called GO                           | 8       | 2017-04-06 20:27:27 UTC | 2017-04-06 20:27:27 UTC |
+----+-----------------+----------------------------------------------------------------------------------+---------+-------------------------+-------------------------+
12 rows in set
### the first post is gone

## now my messages table should have no entry because all the messags are deleted b/c they are all associated with my first post
2.3.1 :079 > Message.all
  Message Load (2.5ms)  SELECT "messages".* FROM "messages"
 => #<ActiveRecord::Relation []> 
2.3.1 :080 > 

## now let me just create another message to show 
2.3.1 :082 > Message.create(author:"Sophia",message:"Emm, ruby? The Gem?", post:Post.find(7))
2.3.1 :083 > Message.all
  Message Load (4.2ms)  SELECT "messages".* FROM "messages"
+----+--------+---------------------+---------+-------------------------+-------------------------+
| id | author | message             | post_id | created_at              | updated_at              |
+----+--------+---------------------+---------+-------------------------+-------------------------+
| 5  | Sophia | Emm, ruby? The Gem? | 7       | 2017-04-06 21:03:31 UTC | 2017-04-06 21:03:31 UTC |
+----+--------+---------------------+---------+-------------------------+-------------------------+
1 row in set


######################################## retrieve all blogs. #################################
2.3.1 :086 > Blog.all
  Blog Load (2.5ms)  SELECT "blogs".* FROM "blogs"
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| id | name       | description                                                  | created_at              | updated_at              |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| 1  | Soccer     | This is a blog talks about soccer                            | 2017-04-06 19:04:31 UTC | 2017-04-06 19:04:31 UTC |
| 2  | Car        | This is a blog talks about sports cars                       | 2017-04-06 19:05:12 UTC | 2017-04-06 19:05:12 UTC |
| 3  | Ruby       | Ruby blog is for the ruby learners                           | 2017-04-06 19:05:57 UTC | 2017-04-06 19:05:57 UTC |
| 4  | Python     | Python is a powerful language, you will read some intro here | 2017-04-06 19:06:31 UTC | 2017-04-06 19:06:31 UTC |
| 5  | JavaSrcipt | This is a blog about JavaScript                              | 2017-04-06 19:07:11 UTC | 2017-04-06 19:07:11 UTC |
| 6  | HTML       | HTML blog shows you how to layout your webpage               | 2017-04-06 19:07:40 UTC | 2017-04-06 19:07:40 UTC |
| 7  | CSS        | Greate blog shows you how to style your webpage              | 2017-04-06 19:08:09 UTC | 2017-04-06 19:08:09 UTC |
| 8  | GO         | GO language, a GOOGLE developed language                     | 2017-04-06 19:08:50 UTC | 2017-04-06 19:08:50 UTC |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
8 rows in set


####################################### retrieve all blogs whose id is less than 5. #######################

2.3.1 :098 > Blog.where(id:1..5)
  Blog Load (2.9ms)  SELECT "blogs".* FROM "blogs" WHERE ("blogs"."id" BETWEEN 1 AND 5)
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| id | name       | description                                                  | created_at              | updated_at              |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
| 1  | Soccer     | This is a blog talks about soccer                            | 2017-04-06 19:04:31 UTC | 2017-04-06 19:04:31 UTC |
| 2  | Car        | This is a blog talks about sports cars                       | 2017-04-06 19:05:12 UTC | 2017-04-06 19:05:12 UTC |
| 3  | Ruby       | Ruby blog is for the ruby learners                           | 2017-04-06 19:05:57 UTC | 2017-04-06 19:05:57 UTC |
| 4  | Python     | Python is a powerful language, you will read some intro here | 2017-04-06 19:06:31 UTC | 2017-04-06 19:06:31 UTC |
| 5  | JavaSrcipt | This is a blog about JavaScript                              | 2017-04-06 19:07:11 UTC | 2017-04-06 19:07:11 UTC |
+----+------------+--------------------------------------------------------------+-------------------------+-------------------------+
5 rows in set



########################################## Validations ######################################

2.3.1 :004 > car = Post.create(title:"Z350",content:"A popular car among young people, cheap, just sexy looking", blog:Blog.find(2))
2.3.1 :011 > car.errors.full_messages
 => ["Title is too short (minimum is 7 characters)"] 