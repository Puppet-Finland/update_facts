update_facts
============

A Puppet module that contains three new facts:

* reboot_required: is reboot required after a kernel update or similar?
* security_updates: number of pending security updates
* updates: number of pending updates (total)

Currently these facts only work on Debian derivatives as they use 
update-notifier under the hood.
