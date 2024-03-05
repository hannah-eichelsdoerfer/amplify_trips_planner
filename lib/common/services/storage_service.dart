// Open storage_service.dart file and update it with the following code to create the StorageService.
// In this service, you will find the uploadFile function, which uses the Amplify storage library to upload an image into an Amazon S3 bucket.
// Additionally, the service provides a ValueNotifier object to track the progress of the image upload.
import 'dart:io';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageService(ref: ref);
});

class StorageService {
  StorageService({
    required Ref ref,
  });

  ValueNotifier<double> uploadProgress = ValueNotifier<double>(0);
  Future<String> getImageUrl(String key) async {
    final result = await Amplify.Storage.getUrl(
      key: key,
      options: const StorageGetUrlOptions(
        pluginOptions: S3GetUrlPluginOptions(
          validateObjectExistence: true,
          expiresIn: Duration(days: 1),
        ),
      ),
    ).result;
    return result.url.toString();
  }

  ValueNotifier<double> getUploadProgress() {
    return uploadProgress;
  }

  Future<String?> uploadFile(File file) async {
    try {
      final extension = p.extension(file.path);
      final key = const Uuid().v1() + extension;
      final awsFile = AWSFile.fromPath(file.path);

      await Amplify.Storage.uploadFile(
        localFile: awsFile,
        key: key,
        onProgress: (progress) {
          uploadProgress.value = progress.fractionCompleted;
        },
      ).result;

      return key;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  void resetUploadProgress() {
    uploadProgress.value = 0;
  }
}
