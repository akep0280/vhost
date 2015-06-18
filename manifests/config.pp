class vhost::config {
  class { 'apache': }


apache::vhost {'akepley.example.com':
  port    => '8080',
  docroot => '/var/www/html/akepley',
  options => ['FollowSymLinks','MultiViews'],
  }

  file { '/var/www/html/akepley/helloworld.html':
    ensure  => 'file',
    owner   => 'apache',
    group   => 'apache',
    mode    => '0444',
    source  => 'puppet:///modules/vhost/helloworld.html',
    }
}
