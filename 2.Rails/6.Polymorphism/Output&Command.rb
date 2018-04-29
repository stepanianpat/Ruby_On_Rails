############# Creating Comments for different table ###########
Comment.create(content:"Isaac is a great guy!", commentable:User.find(1))
Comment.create(content:"Rong is a great girl", commentable:User.find(2))
Comment.create(content:"Maysun is Isaac's sister", commentable:User.find(3))

Comment.create(content:"Soccer is such a popular game", commentable:Blog.find(1))
Comment.create(content:"Sports car are all sexy looking",commentable:Blog.find(2))
Comment.create(content:"Coding is really fun!", commentable:Blog.find(3))
Comment.create(content:"This is a really educationbal blog",commentable:Blog.find(4))

Comment.create(content:"Audi R8 is Tony Stark's favorite car", commentable:Post.find(1))
Comment.create(content:"Chinese food is amazing, I love dumpling", commentable:Post.find(4))
Comment.create(content:"Ruby is a elegent language",commentable:Post.find(9))

Comment.create(content:"Maysun is too young for Audi R8",commentable:Message.find(1))
Comment.create(content:"Wormhole is bented space", commentable:Message.find(6))
Comment.create(content:"I love interestella too", commentable:Message.find(8))

2.3.1 :040 > Comment.all
  Comment Load (2.6ms)  SELECT "comments".* FROM "comments"
+----+------------------------------------------+----------------+------------------+-------------------------+-------------------------+
| id | content                                  | commentable_id | commentable_type | created_at              | updated_at              |
+----+------------------------------------------+----------------+------------------+-------------------------+-------------------------+
| 1  | Isaac is a great guy!                    | 1              | User             | 2017-04-09 19:42:34 UTC | 2017-04-09 19:42:34 UTC |
| 2  | Rong is a great girl                     | 2              | User             | 2017-04-09 19:43:55 UTC | 2017-04-09 19:43:55 UTC |
| 3  | Maysun is Isaac's sister                 | 3              | User             | 2017-04-09 20:10:38 UTC | 2017-04-09 20:10:38 UTC |
| 4  | Soccer is such a popular game            | 1              | Blog             | 2017-04-09 20:10:54 UTC | 2017-04-09 20:10:54 UTC |
| 5  | Sports car are all sexy looking          | 2              | Blog             | 2017-04-09 20:12:38 UTC | 2017-04-09 20:12:38 UTC |
| 6  | Coding is really fun!                    | 3              | Blog             | 2017-04-09 20:12:54 UTC | 2017-04-09 20:12:54 UTC |
| 7  | This is a really educationbal blog       | 4              | Blog             | 2017-04-09 20:13:08 UTC | 2017-04-09 20:13:08 UTC |
| 8  | Audi R8 is Tony Stark's favorite car     | 1              | Post             | 2017-04-09 20:13:19 UTC | 2017-04-09 20:13:19 UTC |
| 9  | Chinese food is amazing, I love dumpling | 4              | Post             | 2017-04-09 20:13:43 UTC | 2017-04-09 20:13:43 UTC |
| 10 | Ruby is a elegent language               | 9              | Post             | 2017-04-09 20:14:02 UTC | 2017-04-09 20:14:02 UTC |
| 11 | Maysun is too young for Audi R8          | 1              | Message          | 2017-04-09 20:14:09 UTC | 2017-04-09 20:14:09 UTC |
| 12 | Wormhole is bented space                 | 6              | Message          | 2017-04-09 20:14:17 UTC | 2017-04-09 20:14:17 UTC |
| 13 | I love interestella too                  | 8              | Message          | 2017-04-09 20:14:23 UTC | 2017-04-09 20:14:23 UTC |
+----+------------------------------------------+----------------+------------------+-------------------------+-------------------------+
13 rows in set

###### Show comments for perticular Objects
User.first.comments
+----+-----------------------+----------------+------------------+-------------------------+-------------------------+
| id | content               | commentable_id | commentable_type | created_at              | updated_at              |
+----+-----------------------+----------------+------------------+-------------------------+-------------------------+
| 1  | Isaac is a great guy! | 1              | User             | 2017-04-09 19:42:34 UTC | 2017-04-09 19:42:34 UTC |
+----+-----------------------+----------------+------------------+-------------------------+-------------------------+
1 row in set

Blog.find(2).comments
+----+---------------------------------+----------------+------------------+-------------------------+-------------------------+
| id | content                         | commentable_id | commentable_type | created_at              | updated_at              |
+----+---------------------------------+----------------+------------------+-------------------------+-------------------------+
| 5  | Sports car are all sexy looking | 2              | Blog             | 2017-04-09 20:12:38 UTC | 2017-04-09 20:12:38 UTC |
+----+---------------------------------+----------------+------------------+-------------------------+-------------------------+
1 row in set

## Delete a comment
 Comment.last.destroy
 +----+-------------------------+----------------+------------------+-------------------------+-------------------------+
| id | content                 | commentable_id | commentable_type | created_at              | updated_at              |
+----+-------------------------+----------------+------------------+-------------------------+-------------------------+
| 13 | I love interestella too | 8              | Message          | 2017-04-09 20:14:23 UTC | 2017-04-09 20:14:23 UTC |
+----+-------------------------+----------------+------------------+-------------------------+-------------------------+
1 row in set

