# Munki-Overnight
Run Munki Overnight (so laptops can update with lid closed)

No warranties provided. Test in your environment.

I have been working on a way to get laptops to install updates with the lid 
closed also but wirelessly. in this repo are the files I use to make the installer pkg using Luggage <https://github.com/unixorn/luggage>.

Uses caffeinate command, pmset, and a launchd and Munki <https://github.com/munki/munki/wiki>. with pmset the laptops will only turn on at the specified time if there is a power source or whenever a power source gets connected after that so it works with our carts just fine.

After pkg is built, import into munki and add to manifests as needed. 

seems to work pretty well in my environment.


