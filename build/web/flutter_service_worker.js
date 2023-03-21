'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e585febeaff073e016af9daa5304f888",
"assets/assets/images/1.jpg": "e2c2ea9b5ae1a0b997c605d99d8417c9",
"assets/assets/images/10.jpg": "46ed4b833e9d5178af2eeeaa12b9a35f",
"assets/assets/images/11.jpg": "1561e82a76d48a2bf29ae9d4cc99aafc",
"assets/assets/images/12.jpg": "b7d91f8459ed2d1e3078ea81b2d5e9dd",
"assets/assets/images/13.jpg": "ef7ae400e797c272186ea27ca9aeb026",
"assets/assets/images/14.jpg": "ec5f1f117c5fde8fcebe8221473c90c7",
"assets/assets/images/15.jpg": "9477818c1a0d2d355de78d7749d9981a",
"assets/assets/images/16.jpg": "a2dcd692fe35252d2965948484b899ca",
"assets/assets/images/17.jpg": "495b8eb95c7c8e204f25d0ff94d5c07f",
"assets/assets/images/18.jpg": "46ed4b833e9d5178af2eeeaa12b9a35f",
"assets/assets/images/19.jpg": "09f90319461a73a3e5b6b86a0cd267eb",
"assets/assets/images/2.jpg": "00c5653dfa8f3121d3b9b021cc2f0082",
"assets/assets/images/20.jpg": "7b3c82502d530a80ebdd93e789050a88",
"assets/assets/images/3.jpg": "c683ffa937837f74000dafcc2b2a28b8",
"assets/assets/images/4.jpg": "acc15aa9c508d051a3af7a916422322f",
"assets/assets/images/5.jpg": "00ab382a99605f10fc1d0c4aeac404ee",
"assets/assets/images/6.jpg": "20a611322a2ea0b8bd67b16069bee107",
"assets/assets/images/7.jpg": "865db7087d1844675bea9b4004fe4ffd",
"assets/assets/images/8.jpg": "a1f42155b9d7cb687801bd75e96543fe",
"assets/assets/images/9.jpg": "9c546aedf81ac80a4630bcb140bbc8ca",
"assets/assets/images/background.jpg": "635827286fd5f812577ae4c5f1525e1f",
"assets/assets/images/bg_phone_1.jpg": "5f89d1e58e0ce32ac6dfb7ed402ed27d",
"assets/assets/images/bg_phone_2.jpg": "57439bf096155c9f24cfe4fc9d8bda88",
"assets/assets/images/bg_phone_3.jpg": "bcdd3f9dcd332d4ea7f977a6718c8b18",
"assets/assets/images/bg_phone_4.jpg": "8b1e81f9917ca7fd9cd4c565a17df83a",
"assets/assets/images/bg_web_1.jpg": "6a10a986d7089a75570d3614ae9d17a1",
"assets/assets/images/bg_web_2.jpg": "9837aaeec8363fd925a7b1f12cbd06cd",
"assets/assets/images/bg_web_3.jpg": "9b10d87fe924bc9193169cea57e8be8a",
"assets/assets/images/cafea.jpg": "cac1421337644953436bbc4d89879757",
"assets/assets/images/calarit.jpg": "7daa83a5bbb23b5d03c8983433f0155f",
"assets/assets/images/canoe.jpg": "62006f535e1d3668ca2973ff87ef95ee",
"assets/assets/images/descoperit.jpg": "e39cdd82ff9df45f8dd9bc00294d0d70",
"assets/assets/images/dubla.JPG": "6ff6b3b68c60e2c6b70a4a68ab1456cf",
"assets/assets/images/dubla_colaj.jpg": "f4eb078bd2d0e10eb91b8ed4857e31b0",
"assets/assets/images/explorat.jpg": "d8c2ecdd0bf3e6a2afa01947024c00f6",
"assets/assets/images/inot.jpg": "16d1c8d5a79b8edafb0d816fbf9dbe93",
"assets/assets/images/logo.png": "fe38f6fde729905a2c312f042cab07c7",
"assets/assets/images/logo_complet.png": "448481214f176b79ddc0aa03da08b1d5",
"assets/assets/images/logo_simple.png": "d4b5aa6b3a6c38468eec1de03af34561",
"assets/assets/images/pescuit.jpg": "e53e6864ec5b443ccc782535cab52878",
"assets/assets/images/plaja.jpg": "77dac11abca00d49ee3bbf37548f4c97",
"assets/assets/images/twin.JPG": "88635057282f52b8fa04f238654f4faf",
"assets/assets/images/twin_colaj.jpg": "95c1a31768e03498ac03ab242800e593",
"assets/FontManifest.json": "913ea35295bcee952f38f941484d8fc4",
"assets/fonts/Electrolize-Regular.ttf": "1be3e0aaeb2bbd1985615a49da7f2eaf",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/Montserrat-Regular.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/NOTICES": "6f624c4f81ea2c4c7693ccb70cec2f33",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_instagram_image_picker/assets/ig_logo.png": "5d11f5a8cc30de789d7589a0ed6be7fc",
"assets/packages/flutter_instagram_image_picker/assets/loading.gif": "d3aaa0b92710ba255426083bc7a123d3",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b00363533ebe0bfdb95f3694d7647f6d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "0a94bab8e306520dc6ae14c2573972ad",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "9cda082bd7cc5642096b56fa8db15b45",
"assets/packages/material/lib/fonts/material.ttf": "73fa4408f8f7e62643f494229f4998c7",
"assets/shaders/ink_sparkle.frag": "6333b551ea27fd9d8e1271e92def26a9",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"index.html": "d8bb557f8f4e95ef05fff912850e7f56",
"/": "d8bb557f8f4e95ef05fff912850e7f56",
"main.dart.js": "8fc329fe9f0083eaa491675ad9076399",
"manifest.json": "5625f2dcb5b4923c410b667bb0c35e55",
"version.json": "704ee28bcb2a08f4c4cbb09cb2fccb47"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
