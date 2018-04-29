rails g model Person first_name:string last_name:string
rails g model Friendship person_id:integer friend_id:integer

###### Creating persons 
Person.create(first_name:"Isaac", last_name:"La")
Person.create(first_name:"Ernest", last_name:"Kot")
Person.create(first_name:"Simon", last_name:"Ko")
Person.create(first_name:"Richard", last_name:"Xie")
Person.create(first_name:"Hameed", last_name:"Ma")
Person.create(first_name:"Tony", last_name:"Stark")
Person.create(first_name:"Steve", last_name:"Rogers")
Person.create(first_name:"Bruce", last_name:"Wayne")

2.3.1 :016 > Person.all
  Person Load (4.0ms)  SELECT "people".* FROM "people"
+----+------------+-----------+-------------------------+-------------------------+
| id | first_name | last_name | created_at              | updated_at              |
+----+------------+-----------+-------------------------+-------------------------+
| 1  | Isaac      | La        | 2017-04-10 02:32:29 UTC | 2017-04-10 02:32:29 UTC |
| 2  | Ernest     | Kot       | 2017-04-10 02:32:38 UTC | 2017-04-10 02:32:38 UTC |
| 3  | Simon      | Ko        | 2017-04-10 02:32:43 UTC | 2017-04-10 02:32:43 UTC |
| 4  | Richard    | Xie       | 2017-04-10 02:32:49 UTC | 2017-04-10 02:32:49 UTC |
| 5  | Hameed     | Ma        | 2017-04-10 02:32:55 UTC | 2017-04-10 02:32:55 UTC |
| 6  | Tony       | Stark     | 2017-04-10 02:33:02 UTC | 2017-04-10 02:33:02 UTC |
| 7  | Steve      | Rogers    | 2017-04-10 02:33:13 UTC | 2017-04-10 02:33:13 UTC |
| 8  | Bruce      | Wayne     | 2017-04-10 02:33:19 UTC | 2017-04-10 02:33:19 UTC |
+----+------------+-----------+-------------------------+-------------------------+
8 rows in set

### Creating Friendships
Friendship.create(person:Person.find(1), friend:Person.find(3))
Friendship.create(person:Person.find(1), friend:Person.find(2))
Friendship.create(person:Person.find(1), friend:Person.find(5))

Friendship.create(person:Person.find(6), friend:Person.find(7))
Friendship.create(person:Person.find(6), friend:Person.find(8))

2.3.1 :010 > Friendship.all
  Friendship Load (4.8ms)  SELECT "friendships".* FROM "friendships"
+----+-----------+-----------+-------------------------+-------------------------+
| id | person_id | friend_id | created_at              | updated_at              |
+----+-----------+-----------+-------------------------+-------------------------+
| 1  | 1         | 3         | 2017-04-10 07:46:43 UTC | 2017-04-10 07:46:43 UTC |
| 2  | 1         | 5         | 2017-04-10 07:47:14 UTC | 2017-04-10 07:47:14 UTC |
| 3  | 6         | 7         | 2017-04-10 07:47:22 UTC | 2017-04-10 07:47:22 UTC |
| 4  | 6         | 8         | 2017-04-10 07:47:29 UTC | 2017-04-10 07:47:29 UTC |
| 5  | 1         | 2         | 2017-04-10 07:47:55 UTC | 2017-04-10 07:47:55 UTC |
| 6  | 1         | 4         | 2017-04-10 07:48:17 UTC | 2017-04-10 07:48:17 UTC |
+----+-----------+-----------+-------------------------+-------------------------+
6 rows in set

#### Find Person 1's all frds 

2.3.1 :017 > Person.first.friendships
  Person Load (3.4ms)  SELECT  "people".* FROM "people"  ORDER BY "people"."id" ASC LIMIT 1
  Friendship Load (2.3ms)  SELECT "friendships".* FROM "friendships" WHERE "friendships"."person_id" = ?  [["person_id", 1]]
+----+-----------+-----------+-------------------------+-------------------------+
| id | person_id | friend_id | created_at              | updated_at              |
+----+-----------+-----------+-------------------------+-------------------------+
| 1  | 1         | 3         | 2017-04-10 07:46:43 UTC | 2017-04-10 07:46:43 UTC |
| 2  | 1         | 5         | 2017-04-10 07:47:14 UTC | 2017-04-10 07:47:14 UTC |
| 5  | 1         | 2         | 2017-04-10 07:47:55 UTC | 2017-04-10 07:47:55 UTC |
| 6  | 1         | 4         | 2017-04-10 07:48:17 UTC | 2017-04-10 07:48:17 UTC |
+----+-----------+-----------+-------------------------+-------------------------+
4 rows in set