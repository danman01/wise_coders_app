
export PGPASSWORD="postgres"
sudo -u postgres psql -d pg_ldap -w --no-password -h localhost -p 5432 -t -c "SELECT id FROM radusers WHERE id=1"