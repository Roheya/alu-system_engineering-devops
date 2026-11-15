# Web Stack Debugging #4

This project focuses on improving Nginx performance under heavy concurrent requests using Puppet.

## Task 0: Sky is the limit, let's bring that limit higher

The objective is to identify and fix Nginx performance issues that cause failed requests during load testing.

### Problem

Nginx had an insufficient open file descriptor limit, resulting in errors such as:

    accept4() failed (24: Too many open files)

### Solution

The Nginx open file limit was increased to 4096 by configuring `/etc/default/nginx`.

Puppet was used to automate the configuration change and restart Nginx whenever the file was updated.

### Puppet Manifest

File: `0-the_sky_is_the_limit_not.pp`

### Testing

ApacheBench was used to test Nginx with 2,000 requests and 100 concurrent connections.

Command:

    ab -c 100 -n 2000 localhost/

Results:
- Before the fix: 824 failed requests in the reproduced test.
- After the fix: 0 failed requests.
- All 2,000 requests completed successfully.

### Tools and Technologies
- Ubuntu 14.04
- Nginx
- ApacheBench
- Puppet 3.4
- Puppet Lint
