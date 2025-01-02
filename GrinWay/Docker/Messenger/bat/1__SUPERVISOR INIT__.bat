docker exec -it symfony supervisord -c /etc/supervisord.conf
docker exec -it symfony supervisorctl -c /etc/supervisord.conf reread
docker exec -it symfony supervisorctl -c /etc/supervisord.conf update
pause