# Web Stack Debugging 3

This project focuses on debugging web server issues using system tracing tools and automating solutions with Puppet.

## Task 0: Strace is your friend

The objective is to investigate and resolve an HTTP 500 Internal Server Error returned by an Apache web server.

### Concepts Covered
- System call tracing with strace
- Apache web server debugging
- Identifying missing files and file access errors
- HTTP status codes
- Puppet configuration management
- Automating system repairs

### Tools
- Linux
- Apache
- strace
- Puppet
- Bash

### Puppet Manifest

**File:** `0-strace_is_your_friend.pp`

The Puppet manifest automates the correction of the identified WordPress configuration issue.

### Expected Result

After applying the Puppet manifest, Apache should return HTTP 200 OK instead of HTTP 500 Internal Server Error.

The WordPress homepage should display successfully.
