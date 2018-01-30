# Mysql sql_mode=only_full_group_by

vagrant ssh into your box
sudo vim /etc/mysql/my.cnf
Scroll to the bottom of file and A to enter insert mode
Copy and paste [mysqld]
sql_mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION to the bottom of the file
esc to exit input mode
:wq to save and close vim.
sudo service mysql restart to restart MySQL.
Done!


# mysql -p -u root

# set mode sql in select

SET sql_mode = only_full_group_by;

SELECT
	id,
	singer_id
FROM
	`song`
