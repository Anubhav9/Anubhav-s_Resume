'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "c93ea5d4a57cf0221665da65f64ca961",
"/": "c93ea5d4a57cf0221665da65f64ca961",
"manifest.json": "9a91b4a0edd1f19d88110bd6857a686a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "07b23e6e1065cbb4da51d857bbecae71",
"404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"assets/static/Playball-Regular.ttf": "fd04853ba01cf00106df27a822ba99ec",
"assets/static/Comfortaa-VariableFont_wght.ttf": "f40889caa25956ef4d27c2aadc4fbe13",
"assets/static/DancingScript-VariableFont_wght.ttf": "d3bebba97d549436fd6137d05d55ae33",
"assets/static/SeaweedScript-Regular.ttf": "84f430003e43b0318718891745359522",
"assets/static/Courgette-Regular.ttf": "59c3685a73f0f1b7c302dd2d6dabd628",
"assets/static/Oxanium-Bold.ttf": "fae76ac58ccad3366598275f54f748b4",
"assets/static/Lato-Regular.ttf": "2d36b1a925432bae7f3c53a340868c6e",
"assets/static/Caladea-Regular.ttf": "6e54476872c84ad572f2f0fcd6172ea5",
"assets/FontManifest.json": "d2199bd96423709125d2489978decb36",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "3c21d7ab33d51c2388fc8a0dfc97f833",
"assets/LICENSE": "0ccff93a70af2335475bedd0abdec390",
"assets/assets/sd.jpg": "42f4ab52528ef6b1e6293a5304c967c3",
"assets/assets/tracking_1.jpg": "3f100882878cfafeb2d5b1807b3df8c0",
"assets/assets/deep_learning_2_3.jpg": "46974207cb2c1d593a7691cbdf5aca6c",
"assets/assets/machine_learning_1.jpg": "227e74212596011ae2e1970f534f115f",
"assets/assets/gender.jpg": "0efd10581cecea0b18713e80d00a9b74",
"assets/assets/machine_learning_2.jpg": "8f43c7f856295f9347c4047b60191c3d",
"assets/assets/male_face.jpeg": "50250572b70b831af6efd8bd2ea5ba71",
"assets/assets/deep_learning_1.jpg": "ad96ee3f0174ffc121efd40eeea883e4",
"assets/assets/face.jpg": "6343fd2ccbfdecdab337d167c4a8a785",
"assets/assets/tracking_2.jpg": "0fa7d974003a084b3311888531526494",
"assets/assets/sd_1.jpg": "df05187186bf0b2ae49ce52bfbdd7c84",
"assets/assets/face.jpeg": "b7db847a974c08f28e384eba4d8e5884",
"assets/assets/me.jpg": "799dc5130a686a2afce9353c2c09dea1",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
