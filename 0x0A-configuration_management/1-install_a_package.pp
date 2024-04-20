class { 'python': }  # Include the base python class

package { 'Flask':
  ensure   => installed,
  provider => 'pip',
  require  => Class['python'],
  name     => 'flask',
  version  => '2.1.0',
}
