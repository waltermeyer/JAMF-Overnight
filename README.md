# JSS-Overnight
Run JSS Overnight (so laptops can update with lids closed)


I have been working on a way to get laptops to install updates with the lid 
closed also but wirelessly. in this repo are the files I use to make the installer pkg using Packages <http://s.sudre.free.fr/Software/Packages/about.html>.

Uses caffeinate command, pmset, and a launchd and JAMF <https://www.jamf.com>. with pmset the laptops will only turn on at the specified time if there is a power source or whenever a power source gets connected after that so it works with our carts just fine.

After pkg is built, import into JSS and push out the policy. 

seems to work pretty well in my environment.


