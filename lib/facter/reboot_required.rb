Facter.add('reboot_required') do

    update_motd_reboot_required = '/usr/lib/update-notifier/update-motd-reboot-required'
    reboot_required_file = '/var/run/reboot-required'

    osfamily = Facter.value('osfamily')

    if osfamily == "Debian" and File.file?(update_motd_reboot_required) then
        setcode do

            if File.file?(reboot_required_file) then
                "True"
            else
                "False"
            end
        end
    else
        nil
    end
end
