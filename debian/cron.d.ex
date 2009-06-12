#
# Regular cron jobs for the drush package
#
0 4	* * *	root	[ -x /usr/bin/drush_maintenance ] && /usr/bin/drush_maintenance
