#
# == Class: update_facts
#
# We are only interested in distributing these facts using pluginsync, but we 
# need this class to keep the puppet module autoloader happy.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class update_facts {

    include ::update_notifier
}
