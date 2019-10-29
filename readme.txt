1) Download or clone project and set database credential in .env file.
2) Download mikaels.sql file from git repository link and import into database.
 						OR 
  If you don't want to import simply run php "artisan migrate command" on the console on project root folder after that you want to insert faker record in the database then run "php artisan tinker" command then run 
  "factory(App\post::class, 50)->create();".

3) You can test all api route through postman by import collection file in postman.

Note
*) In database all user password set is password
*) Change bearer token in header in postman.
*) Download postman collection "Haris Test.postman_collection.json" from git repository link.
