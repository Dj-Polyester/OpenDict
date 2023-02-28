import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:jgraph/api/entry.dart';
import 'package:jgraph/db/db.dart';

class Loader_ {
  Future<void> load2db<T>(List<T> objects) async {
    await Db.putAll<T>(objects);
  }

  Future<String> loadAsset(String path) async {
    final String pathLowered = path.toLowerCase();
    //image asset
    if (pathLowered.endsWith(".png") ||
        pathLowered.endsWith(".jpg") ||
        pathLowered.endsWith(".jpeg")) {
      loadImageAsset(path);
    }
    //text asset
    else if (pathLowered.endsWith(".xml")) {
      final String contents = await loadTextAsset(path);
      return contents;
    }
    throw Exception("The file $path has invalid type");
  }

  Future<String> loadTextAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  AssetImage loadImageAsset(String path) {
    return AssetImage(path);
  }
}
