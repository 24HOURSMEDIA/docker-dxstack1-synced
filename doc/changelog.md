# CHANGELOG

**[STAY UP TO DATE about this product - subscribe to our email updates](http://eepurl.com/caYXEH)**

### v0.0 -> v1.0

* fixed issue mysql containing anonymous users, preventing normal login.
* if mysql directory is empty (i.e. newly mounted), it is initialized with standard data
* sync between mounted source and synced source directory now sets ownership and permissions
* several small improvements and bugfixes
* now runs smoothly symfony projects
* /source directory is now symlinked to the synced directory.
  Users can change this to point to the source directory instead;
  This allows vhosts configuration to /source directly to be changed instantly.
* installed symfony command line command
