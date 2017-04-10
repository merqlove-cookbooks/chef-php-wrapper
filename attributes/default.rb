if platform_family?('rhel')
  default['php']['packages'] = %w(php56-php php56-php-devel php56-php-cli php-pear)
  default['php']['mysql']['package'] = 'php-mysql'
  default['php']['fpm_package']   = 'php-fpm'
  default['php']['fpm_pooldir']   = '/etc/php-fpm.d'
  default['php']['fpm_default_conf'] = '/etc/php-fpm.d/www.conf'
  default['php']['fpm_service'] = 'php-fpm'
end
