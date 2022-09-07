# otus-systemd
otus-systemd

## 1. Склонировать репозиторий
## 2. vagrant up

В созданной VM будут запущены 2 http, watchlog.timer и spawn-fcgi.
В актуальных версиях httpd похоже не требуется манипуляций, из man:
```
   Instantiated services
       The httpd@.service unit is an instantiated template service. An instance of this unit will be started using the configuration file /etc/httpd/conf/INSTANCE.conf,
       where INSTANCE is replaced with the instance name. For example, systemctl start httpd@foobar.service will start httpd using the configuration file
       /etc/httpd/conf/foobar.conf. The HTTPD_INSTANCE environment variable is set to the instance name by the unit and is available for use within the configuration file.

       To allow multiple instances of httpd to run simultaneously, a number of configuration directives must be changed, such as PidFile and DefaultRuntimeDir to pick
       non-conflicting paths, and Listen to choose different ports. The example configuration file /usr/share/doc/httpd/instance.conf demonstrates how to make such changes
       using HTTPD_INSTANCE variable.

       It can be useful to configure instances of httpd@.service to reload when httpd.service is reloaded; for example, logrotate will reload only httpd.service when logs
       are rotated. If this behaviour is required, create a drop-in file for the instance as follows:

           [Unit]
           ReloadPropagatedFrom=httpd.service

       As with normal units, drop-in files for instances can be created using systemctl edit, e.g.  systemctl edit httpd@foobar.service.
 ```
