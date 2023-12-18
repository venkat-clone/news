import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class StorageRepo {

  final String filePath;

  StorageRepo({required this.filePath});

  Future<String> uploadFile({required File file, String? name}) async {
    final path ='$filePath/${name??DateTime.now().millisecondsSinceEpoch}';
    print('path:$path');
    final reference = FirebaseStorage.instance.ref(path);
    final res = await reference.putFile(file);
    return res.ref.getDownloadURL();
  }

}
