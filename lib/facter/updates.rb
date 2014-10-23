Facter.add('updates') do

    apt_check = '/usr/lib/update-notifier/apt-check'

    osfamily = Facter.value('osfamily')

    if osfamily == "Debian" and File.file?(apt_check) then
        setcode do
            updates = Facter::Core::Execution.exec(apt_check << " 2>&1").split(';')[0]
        end
    end
end
