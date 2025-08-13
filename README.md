# RSYNC-Raspberry-Pi-Implementation

from my first ares data transfer project 4 months back - for reference and reuse.

**TO-DO **implementations for next set-up:

should make the IP static between the pi and the computer.

**Set up:**

In no particular order...
Sudo to give excicutable permissions for the bash script on the file

set up an ssh connection between the computer and the pi and generate public/private keys so that you can log in passwordless (required for the rysc to operate)
Here's a link on how to do that: https://builtin.com/articles/ssh-without-password

crontab: set the frequency that the rasperberry pi will attempt to sync with the other computer 

Nano the autosync.sh file to fill in the areas suitable to your code.

Note: should note that if a file is deleted on the pi it wont be deleted on the host computer - this is because the protocol 'syncs' data 'to' a destination path - not both ways. meaning the folder will be updated to match anything new from the pi but old information will need to be manually deleted.
This was actually beneficial for the rocket project as we didn't need to keep all of the data in the folder and could delete after the sync and still have it on record on the computer.

Configure the rsync flags to your liking.

mit opensource licence 
