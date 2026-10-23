# oscnt
Containers for Openshift

## ssh:lamp-php-8.3

Same stack as `ssh:lamp-php-7.3` (Apache event + php-fpm, MariaDB 10.3, dropbear)
with PHP 8.3.36, which fixes PHP2Shell (CVE-2026-109618, CVE-2026-109619).
PHP 8.3 is no longer packaged for Ubuntu 18.04, so `php8/tags/8.3` builds it from
the php.net release with the same extensions as the 7.3 image. `json` is now part
of PHP itself and `wddx` was removed from PHP in 7.4.

Build all layers:

    ./build-lamp-php-8.3.sh

Move an existing php73 persistent storage to php83. This keeps `php.ini`,
`php-fpm.conf`, `fpm.d` and custom `conf.d` settings, disables the php73
supervisor/init/cron/logrotate entries and points Apache at the php83 socket:

    docker run --rm -v /path/to/persistent:/opt/local oscnt/ssh:lamp-php-8.3 /opt/app/scripts/php83-migrate

Then run `oscnt/ssh:lamp-php-8.3` instead of `oscnt/ssh:lamp-php-7.3`. To go back
to the 7.3 image, run the same command with `/opt/app/scripts/php83-migrate --rollback`.
