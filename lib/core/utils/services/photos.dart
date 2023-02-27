import '../../core.dart';

class PhotosServices {
  static Future<bool> askPermission() async {
    final status = await Permission.photos.status;

    if (status.isDenied) {
      final permissionResult = await Permission.photos.request();

      if (permissionResult.isGranted || permissionResult.isLimited) {
        return true;
      }
    } else if (status.isGranted || status.isLimited) {
      return true;
    }
    if (Platform.isIOS || Platform.isAndroid) {
      await AppSettings.openAppSettings();
    }
    return false;
  }

  static Future<Uint8List?> selectSinglePhoto() async {
    try {
      final picker = ImagePicker();
      final possiblePhoto = await picker.pickImage(source: ImageSource.gallery);
      return possiblePhoto?.readAsBytes();
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }
    }
    return null;
  }
}
