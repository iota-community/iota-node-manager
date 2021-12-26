# IOTA Node Manager
![Hornet Mobile App][logo]

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A mobile app running on Android and iOS to manage multiple IOTA Nodes on the go! Supporting Hornet and Bee nodes.

![App Preview][info_graphic]

---

## Peers are not available and app shows not connected to the internet error
Try to execute the following cURL command. Make sure to replace NODE_URL and JWT_TOKEN with the correct values

```bash
curl --location --request GET 'https://NODE_URL/api/v1/peers'  --header 'Authorization: Bearer JTW_TOKEN'
```

The following responses can be expected:
1. HTTP 200, with a JSON object containing all existing peers
2. HTTP 401 Not authorized - The JWT Token is not valid. Make sure it was generated correctly.


In case of 2. it could also be a problem with the reverse proxy configuration on your server. 
Due to security concerns when not using JWT_AUTH on your node some setup guides blocked crucial API endpoints within the reverse proxy.

Here is an example of a NGINX conf that is blocking the peer endpoint:

```bash
upstream hornet_api {
  server 127.0.0.1:14265;
}

# hornet api
location ~ ^/api/v1/(info|tips|messages|treasury|transactions|milestones|outputs|addresses) {
    limit_req zone=hornet_api burst=25;
    default_type application/json;
    auth_basic off;
    proxy_pass http://hornet_api;
}
```
If that is the case make sure to adjust it accordingly. One simple example would be the following which is totally fine if JWT_AUTH is enabled for the node.

```bash
upstream hornet_api {
  server 127.0.0.1:14265;
}

location /api/v1 {
    limit_req zone=hornet_api burst=25;
    default_type application/json;
    auth_basic off;
    proxy_pass http://hornet_api;
}
```
To make sure you redirect to the correct internal address verify the bindAddress in the node main config (see below one example configuration of the restApi block.
```bash
...
"restAPI": {
    "jwtAuth": {
      "enabled": true,
      "salt": "HORNET"
    },
    "excludeHealthCheckFromAuth": false,
    "permittedRoutes": [
      "/health",
      "/mqtt",
      "/api/v1/info",
      "/api/v1/tips",
      "/api/v1/messages/:messageID",
      "/api/v1/messages/:messageID/metadata",
      "/api/v1/messages/:messageID/raw",
      "/api/v1/messages/:messageID/children",
      "/api/v1/messages",
      "/api/v1/transactions/:transactionID/included-message",
      "/api/v1/milestones/:milestoneIndex",
      "/api/v1/milestones/:milestoneIndex/utxo-changes",
      "/api/v1/outputs/:outputID",
      "/api/v1/addresses/:address",
      "/api/v1/addresses/:address/outputs",
      "/api/v1/addresses/ed25519/:address",
      "/api/v1/addresses/ed25519/:address/outputs",
      "/api/v1/treasury"
    ],
    "whitelistedAddresses": [
      "127.0.0.1",
      "::1"
    ],
    "bindAddress": "0.0.0.0:14265",
    "powEnabled": true,
    "powWorkerCount": 1,
    "limits": {
      "bodyLength": "1M",
      "maxResults": 1000
    }
  },
  ...
```


## Generate a JWT Token
It depends on how you installed the node.

* (A) APT:  run the following command ```./hornet tool jwt-api```
*  (B) Nuriel Playbook: https://github.com/nuriel77/hornet-playbook#get-jwt-token
*  (C) Swarm: Go to Hornet Configuration, select JWT in the menu and generate a new Token.

Unfortunately this requires you to temporary shutdown the node before generating it.


---

## Open TODOs
- Improve test coverage
- Add improved documentation
- Improve readme
- Improve CI/CD

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo]: https://raw.githubusercontent.com/pauli2406/iota_hornet_mobile_app/main/assets/svg/manager_banner.svg
[info_graphic]:  https://github.com/iota-community/iota-node-manager/blob/main/image_assets/Google%20presentation%20screen.png?raw=true
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
