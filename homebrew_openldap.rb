info = `brew info openldap`
openldap_version = /openldap\:\ stable\ (?<version>\d+\.\d+\.\d+)/.match(info)[:version]

`brew install homebrew/dupes/openldap --with-berkeley-db`

`mkdir -p /usr/local/libexec`
`ln -s /usr/local/Cellar/openldap/#{openldap_version}/libexec/slapd /usr/local/libexec`


data_path = '/usr/local/var/openldap-data'
unless File.exists?("#{data_path}/DB_CONFIG")
  `mv #{data_path}/DB_CONFIG.example #{data_path}/DB_CONFIG`
end

unless File.exists?("#{data_path}/id2entry.bdb")
  `slapadd -l /usr/local/etc/openldap/schema/core.ldif`
end

`slaptest`
