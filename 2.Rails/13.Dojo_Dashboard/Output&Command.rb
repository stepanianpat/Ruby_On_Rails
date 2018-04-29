#### Creating Dojos 
Dojo.create(branch:"CD Seattle",street:"111 Main St",city:"Bellevue",state:"WA")
Dojo.create(branch:"CD San Jose",street:"222 Zanker Rd",city:"San Jose",state:"CA")
Dojo.create(branch:"CD Burbank",street:"333 Olive St",city:"Burbank",state:"CA")
Dojo.create(branch:"CD Irvine",street:"444 Santa Ana Dr",city:"Costa Mesa",state:"CA")
Dojo.create(branch:"CD Chicago",street:"555 Hudson Blvd",city:"Chicago",state:"IL")
Dojo.create(branch:"CD Austin",street:"666 Taxas St",city:"Austin",state:"TX")
2.3.1 :009 > Dojo.all
  Dojo Load (4.7ms)  SELECT "dojos".* FROM "dojos"
+----+-------------+------------------+------------+-------+-------------------------+-------------------------+
| id | branch      | street           | city       | state | created_at              | updated_at              |
+----+-------------+------------------+------------+-------+-------------------------+-------------------------+
| 1  | CD Seattle  | 111 Main St      | Bellevue   | WA    | 2017-04-12 01:59:12 UTC | 2017-04-12 01:59:12 UTC |
| 2  | CD San Jose | 222 Zanker Rd    | San Jose   | CA    | 2017-04-12 01:59:20 UTC | 2017-04-12 01:59:20 UTC |
| 3  | CD Burbank  | 333 Olive St     | Burbank    | CA    | 2017-04-12 01:59:27 UTC | 2017-04-12 01:59:27 UTC |
| 4  | CD Irvine   | 444 Santa Ana Dr | Costa Mesa | CA    | 2017-04-12 01:59:38 UTC | 2017-04-12 01:59:38 UTC |
| 5  | CD Chicago  | 555 Hudson Blvd  | Chicago    | IL    | 2017-04-12 01:59:49 UTC | 2017-04-12 01:59:49 UTC |
| 6  | CD Austin   | 666 Taxas St     | Austin     | TX    | 2017-04-12 01:59:55 UTC | 2017-04-12 01:59:55 UTC |
+----+-------------+------------------+------------+-------+-------------------------+-------------------------+
6 rows in set