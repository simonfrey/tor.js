# tor.js

This is the backend setup of tor.js a minimal JavaScript library to check if your visitors are TOR users.

To find out how to use the tor.js with the already setup API, just visit [simon-frey.eu/torjs](https://simon-frey.eu/torjs)

## How it works

1) The `getIPs.sh` gets the current TOR exit nodes from the TOR api and saves it into the file `exit_node_ips.txt`
2) `exit_node_ips.txt` is parsed by `tor_js.php` and it checks if the current request IP is in that list and thereby the visitor is a TOR user
3) `tor_js.php` build a valid JavaScript file containing the `isTor` global variable that tells if the request ip is in the list.
4) You can use tor.js in your site to trigger certain different behaviors for TOR users


## Deployment

1) Run `getIPs.sh` in regular intervals (e.g. every 5 minute via a cronjob)
2) Make the directory containing `tor_js.php` publicly available

Now you are already setup to use tor.js within your website. Just point script tag to your site `<script src="yourwebsite.com/path/tor_js.php"></script>`. 

3) (Optional) To make it look more like a normal JavaScript file, you can rewrite the request url in apache via the provided `.htaccess` file and use it in your frontend `<script src="yourwebsite.com/path/tor.js"></script>`

## Support

Please open an issue if you have any problems with tor.js

## Contribution

Checkout the open issues and see if you can/want to fixe some of them. Thanks for your help!

## License

The Unlicense (Public Domain)