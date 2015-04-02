# Munki-Overnight
Run Munki Overnight (so laptops can update with lid closed)

I have been working on a way to get laptops to install updates with the lid 
closed also but wirelessly. in this repo are the files I use to make the installer pkg using Luggage <https://github.com/unixorn/luggage>.

I came up with this: please note, this works pretty well in my environment.

Uses pmset and a launchd and Munki <https://github.com/munki/munki/wiki>. with pmset the laptops will only turn on at the specified time if there is a power source or whenever a power source gets connected after that so it works with our carts just fine. I use Workgroup Manager to set the Shutdown and Poweron times but if youre not using that pmset commands should work. 

seems to work pretty well in my environment.


