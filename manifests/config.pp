class vhost::config {
  class { 'apache': }


apache::vhost {'akepley.example.com':
  port    => '8080',
  docroot => '/var/www/html/akepley',
  options => ['FollowSymLinks','MultiViews'],
  }
}
