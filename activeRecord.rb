# SELECT
#   COUNT(*)
# FROM
#   users;

User.count

# SELECT
#   COUNT(*)
# FROM
#   users
# WHERE
#   users.active = true;

User.where(:active => "TRUE").count

# SELECT
#   COUNT(*)
# FROM
#   users
# WHERE
#   users.last_login > DATETIME() - ?;

User.where("last_login > DATETIME() - ?", number_of_seconds).count