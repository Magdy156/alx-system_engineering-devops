# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx server
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => '# Nginx configuration file
              server {
                listen 80;
                server_name _;
              
                location / {
                  return 301 http://example.com/;
                }
              
                location /redirect_me {
                  return 301 http://example.com/;
                }
              }',
}

# Enable default site
file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
  notify => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => running,
  enable => true,
}
