ENTER:
docker exec -it symfony bash

Env:
1) load me with: %S% (clear && docker exec -it symfony /bin/bash)
2) and when inside use:
	$r to use rsync
	$s to use php bin/console

Notes:

1) Supervisor
supervisord -c /etc/supervisord.conf
supervisorctl -c /etc/supervisord.conf reread
supervisorctl -c /etc/supervisord.conf update
supervisorctl -c /etc/supervisord.conf start <NAME_AFTER_PROGRAMM>:*

2) messenger
rm -rf var/cache/ && php bin/console messenger:consume --all --memory-limit=128M