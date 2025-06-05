// import 'dart:ui' as ui;

// import 'package:flutter/foundation.dart';
// import 'package:web/web.dart' as web;

// final Set<String> _registeredViewTypes = {};

// void registerWebImageViewTypeIfNeeded(
//   String name,
//   String imageUrl,
//   int width,
//   int height,
// ) {
//   if (kIsWeb) {
//     final viewType = 'planet-image-$name';
//     if (!_registeredViewTypes.contains(viewType)) {
//       // ignore: undefined_prefixed_name
//       ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
//         final img = web.HTMLImageElement();
//         img
//           ..src = imageUrl
//           ..style.width = '${width}px'
//           ..style.height = '${height}px'
//           ..style.objectFit = 'cover';
//         img.onError.listen((event) {
//           img.src = '';
//           img.alt = 'Image not available';
//         });
//         return img;
//       });
//       _registeredViewTypes.add(viewType);
//     }
//   }
// }
