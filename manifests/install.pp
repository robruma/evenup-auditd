# == Class: auditd::install
#
# This class installs auditd.  It is not intended to be called directly.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
#
# === Copyright
#
# Copyright 2013 EvenUp.
#
class auditd::install {

  package { 'audit':
    ensure  => 'latest',
    notify  => Class['auditd::service'],
  }

}