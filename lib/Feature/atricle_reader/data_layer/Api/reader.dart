// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:path_provider/path_provider.dart';
//
// class FileDownloader {
//   final Dio _dio = Dio();
//
//   Future<void> downloadAndStoreFile(String url, String fileName) async {
//     try {
//       // Request storage permissions
//       var status = await Permission.storage.request();
//       if (status.isGranted) {
//         // Get the external storage directory
//         Directory? directory = await getExternalStorageDirectory();
//         if (directory != null) {
//           final filePath = '${directory.path}/$fileName';
//
//           // Download the file using Dio
//           await _dio.download(
//             url,
//             filePath,
//             options: Options(responseType: ResponseType.bytes),
//           );
//
//           print('File downloaded and stored at $filePath');
//         } else {
//           print('Could not get the storage directory');
//         }
//       } else {
//         print('Storage permission denied');
//       }
//     } catch (e) {
//       print('Error downloading or storing file: $e');
//     }
//   }
// }