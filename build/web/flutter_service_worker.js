'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "b0347552120511da164c59d07f6f0403",
"assets/assets/googleFonts/Inter-Black.ttf": "980c7e8757e741bb49c7c96513924c61",
"assets/assets/googleFonts/Inter-Bold.ttf": "275bfea5dc74c33f51916fee80feae67",
"assets/assets/googleFonts/Inter-ExtraBold.ttf": "c9709fb8e32755490795ce5bd226c3a0",
"assets/assets/googleFonts/Inter-Medium.ttf": "ed533866b5c83114c7dddbcbc2288b19",
"assets/assets/googleFonts/Inter-Regular.ttf": "079af0e2936ccb99b391ddc0bbb73dcb",
"assets/assets/googleFonts/Inter-SemiBold.ttf": "07a48beb92b401297a76ff9f6aedd0ed",
"assets/assets/googleFonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/googleFonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/googleFonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/googleFonts/Rubik-Regular.ttf": "35c2b913e9977fe4a3d4327824fbaf35",
"assets/assets/icons/chevron-down.png": "fe2200eefc4d34e83e4d637a4330cc9d",
"assets/assets/icons/menu.png": "fb9b524bf3ce853ed34593828bf86b15",
"assets/assets/icons/search.png": "4d53bb8fcadcb9212192de87dba6d13e",
"assets/assets/images/300x600.png": "da866a7f07da9bff45afc9003248a0b8",
"assets/assets/images/360x100.png": "d548ad749693169a2b194e237c918561",
"assets/assets/images/360x280.png": "5855d588c3dbe594efe661014b14a2ad",
"assets/assets/images/970x250.png": "173a620e5c21d04217e95774665c6a17",
"assets/assets/images/attractions.png": "cb37d488a175b7feea953ad123b5959e",
"assets/assets/images/attractionToDoCover1.png": "844436e78fd3f9a52c95ccd234203630",
"assets/assets/images/attractionToDoGallery1.png": "6ee72f0cb9a2d1f1ca34187d1162bf34",
"assets/assets/images/attractionToDoGallery2.png": "4f283644c417201cac097469414db8b2",
"assets/assets/images/attractionToDoGallery3.png": "d5fbbc492cdd6ee45d0a2f325a096d70",
"assets/assets/images/attractionToDoGallery4.png": "2e313e5f761ed4954be0317f765137cd",
"assets/assets/images/avatar1.png": "e96ab42e56080c55d71fb69cf477b210",
"assets/assets/images/avatar2.png": "00f7b70d3b883ea10f5f901070e21b88",
"assets/assets/images/avatar3.png": "09e2c28202c30a244c311d18b5e70355",
"assets/assets/images/banner.png": "f412f26d480b41ee62b7e2740e4d2c5e",
"assets/assets/images/banner_m.png": "3a19d8ba9fc40ebbef8fc6be0edc5bd3",
"assets/assets/images/card.png": "04e13b2dbef04e56e13619294f2ea455",
"assets/assets/images/cityCover1.png": "9c40edef4dd85a79a65a624eccedce50",
"assets/assets/images/concerts.png": "c5a54ae1a3b4419c99d7ac86773fd461",
"assets/assets/images/eventCover1.png": "419920f642044426497e66fbbf5719c5",
"assets/assets/images/fastFood.png": "7e670db13c3cae0ea5fa3333e6b97e3b",
"assets/assets/images/mall.png": "7ed7a99b16b90bcf3da4582dc4b67276",
"assets/assets/images/offer.png": "19123d43931b9070beb281c2d33fd208",
"assets/assets/images/offer2.png": "d1f2c0d49211bd0616f989160cc51d04",
"assets/assets/images/sports.png": "c5cf066fa89d511da90e2a3d5562b45a",
"assets/assets/images/Vector.png": "ddca6e0490876598d8050d7eb629d62e",
"assets/assets/images/wifiAndSimCards.png": "458b7d170eafad6bb00f995105930134",
"assets/FontManifest.json": "b934f0e1f285e49fed5805fbfb76297c",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "79cc08097b6301140886e03875bb1b49",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "c6a76cb4123499ef468680d0759efdf1",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e6e41faaa37ee8d703ea06bc113e87a6",
"/": "e6e41faaa37ee8d703ea06bc113e87a6",
"main.dart.js": "e694443a3f22bf56718053ec54c7c704",
"manifest.json": "ebece4a913e6bdb97700e1805d445be6",
"version.json": "390a238556d0e8b162b1fa363a16f811"
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
