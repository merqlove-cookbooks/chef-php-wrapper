if platform_family?('rhel')
  default['php-fpm']['service'] = 'php-fpm'
else
  default['php-fpm']['service'] = 'php5-fpm'
end

default['php-fpm']['upload_max_filesize'] = '16M'
default['php-fpm']['post_max_size'] = '16M'

default['php-fpm']['session_save_path'] = '/var/lib/php/session'
default['php-fpm']['session_save_handler'] = 'files'

default['php-fpm']['emergency_restart_threshold'] = 10
default['php-fpm']['emergency_restart_interval'] = '1m'
default['php-fpm']['process_control_timeout'] = '10s'

default['php-fpm']['default']['pool'] = {
  name: 'www',
  allowed_clients: '127.0.0.1',
  process_manager: 'dynamic',
  max_children: 4,
  start_servers: 2,
  min_spare_servers: 1,
  max_spare_servers: 3,
  max_requests: 200,
  catch_workers_output: 'yes',
  php_options: {
    'listen.backlog' => '-1',
    'rlimit_files' => '131072',
    'rlimit_core' => 'unlimited'
  }
}
