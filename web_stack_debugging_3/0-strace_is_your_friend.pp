$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
# A puppet manuscript to replace a line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

#replace line containing "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
