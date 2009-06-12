.\"                                      Hey, EMACS: -*- nroff -*-
.\" First parameter, NAME, should be all caps
.\" Second parameter, SECTION, should be 1-8, maybe w/ subsection
.\" other parameters are allowed: see man(7), man(1)
.TH DRUSH 1 "June 11, 2009"
.\" Please adjust this date whenever revising the manpage.
.\"
.\" Some roff macros, for reference:
.\" .nh        disable hyphenation
.\" .hy        enable hyphenation
.\" .ad l      left justify
.\" .ad b      justify to both left and right margins
.\" .nf        disable filling
.\" .fi        enable filling
.\" .br        insert line break
.\" .sp <n>    insert n+1 empty lines
.\" for manpage-specific macros, see man(7)
.SH NAME
drush \- shell scripting interface for Drupal
.SH SYNOPSIS
.B drush
.RI [ options ] " command" ...
.SH DESCRIPTION
.PP
\fBdrush\fP is a veritable Swiss Army knife designed to make life
easier for those of us who spend some of our working hours hacking
away at the command prompt.
.PP
\fBDrush\fP core ships with lots of useful commands for interacting with
code like modules/themes/profiles. Similarly, it runs update.php,
executes sql queries and DB migrations, and misc utilities like run
cron or clear cache.
.SH OPTIONS
.TP
.B \-r <path>, \-\-root=<path>
Drupal root directory to use (default: current directory)             
.TP
.B \-l <uri> , \-\-uri=<uri>
URI of the drupal site to use (only needed in multisite environments) 
.TP
.B \-v, \-\-verbose=2
Display extra information about the command.                          
.TP
.B \-q, \-\-quiet
Hide all output
.TP
.B \-d, \-\-debug
Display even more information, including internal messages.           
.TP
.B \-y, \-\-yes
Assume 'yes' as answer to all prompts                                 
.TP
.B \-s, \-\-simulate
Simulate all relevant actions (don't actually change the system)
.TP
.B \-i, \-\-include
A list of paths to search for drush commands
.TP
.B \-c, \-\-config
Specify a config file to use. See example.drushrc.php                 
.TP
.B \-u, \-\-user
Specify a user to login with. May be a name or a number.              
.TP
.B \-b, \-\-backend
Hide all output and return structured data (internal use only).       
.TP
.B \-p, \-\-pipe
Emit a compact representation of the command for scripting.           
.PP
If you get tired of typing options all the time, you can add them to
your drush.php alias or create a drushrc.php file. These provide
additional options for your drush call. They provide great flexibility
for a multi-site installation, for example. See example.drushrc.php.
.SH COMMANDS
Drush is all based around "commands" that are usually defined in
various modules. This manual only lists the builtin commands shipped
with the Drush core, but other modules may extend this list. See the
.B help
command to see the up to date list. The list of available comands may
also vary based on the state of the Drupal accessed by
.B drush
(if it's installed, offline, working or not, which modules are
installed, etc).
.TP
.B help
Print the help message. Use --filter to limit command list to one
command file (e.g. --filter=pm).
.TP
.B cron
Run all cron hooks.
.TP
.B updatedb
Execute the update.php process from the command line
.TP
.B status
Provides a birds-eye view of the current Drupal installation, if any.
.TP
.B script
Run php script(s).
.TP
.B cache clear
Clear all caches.
.TP
.B watchdog show
Shows recent watchdog log messages. Optionally filter for a specific type.
.TP
.B watchdog delete
Delete all messages or only those of a specified type.
.TP
.B sync
Rsync the Drupal tree to/from another server using ssh.
.TP
.B eval
Evaluate arbitrary php code after bootstrapping Drupal.
.TP
.B enable
Enable one or more modules.
.TP
.B disable
Disable one or more modules.
.TP
.B uninstall
Uninstall one or more modules.
.TP
.B statusmodules
Show module enabled/disabled status
.TP
.B refresh
Refresh update status information
.TP
.B updatecode
Update your project code
.TP
.B update
Update your project code and apply any database updates required (update.php)
.TP
.B info
Release information for a project
.TP
.B dl
Download core Drupal and projects like CCK, Zen, etc.
.TP
.B test mail
Run all tests and mail the results to your team.
.TP
.B test clean
Delete leftover tables and files from prior test runs.
.TP
.B sql conf
Print database connection details.
.TP
.B sql connect
A string for connecting to the DB.
.TP
.B sql dump
Exports the Drupal DB as SQL using mysqldump.
.TP
.B sql query
Execute a query against the site database.
.TP
.B sql load
Copy source database to target database.
.TP
.B sql cli
Open a SQL command-line interface using Drupal’s credentials.
.SH SEE ALSO
.BR cvs (1),
.BR svn (1),
.BR wget (1).
.SH AUTHOR
Drush was originally developed by Arto for Drupal 4.7 (this alpha code
can still be found in the DRUPAL-4-7 branch). In May 2007, it was
partly rewritten and redesigned for Drupal 5 by frando. Since 2008,
the module has been maintained by Moshe Weitzman, Owen Barton and
Adrian Rossouw.
.PP
This manual page was written by Antoine Beaupré <anarcat@koumbit.org>,
for the Debian project (but may be used by others).
