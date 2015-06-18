class vhost::config {
  class { 'apache': }


apache::vhost {'akepley.example.com':
  port    => '80',
  docroot => '/var/www/html/akepley',
  }
}
