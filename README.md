Movim for Yunohost.
==========

Movim is a decentralized social network, written in PHP and HTML5 and based on the XMPP standard protocol : https://movim.eu .

It is recommended to use a "valid" certificate to use Movim, auto-signed is sometimes problematic. You might want to take a look a StartSSL or Let's Encrypt.

Current Movim version : 0.9 git2015-12-24

Please read CHANGELOG.

**Installation**

    yunohost app install https://github.com/src386/movim_ynh

**Upgrade**

    yunohost app upgrade movim -u https://github.com/src386/movim_ynh

**Options**

* domain : Your domain name.
* path : Path for you Movim pod (will be https://example.com/path).
* admin : Who can access /?admin (pod options).
* password : Password to access /?admin.
* language : Pod language, currently en or fr.
* enable sso : automatic login.
* port : Port for Movim daemon. Default is 9537, a check is performed before installation.

**Pod advanced configuration**

    https://example.com/movim/?admin

Username and password are defined during installation.

**Remove**

    yunohost app remove movim

**Help**

support@conference.yunohost.org src386_ or just open an issue.
