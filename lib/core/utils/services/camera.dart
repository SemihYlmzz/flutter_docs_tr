import '../../core.dart';

class CameraServices {
  static Future<bool> askPermission() async {
    final status = await Permission.camera.status;

    if (status.isDenied) {
      final permissionResult = await Permission.camera.request();

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
      final possiblePhoto = await picker.pickImage(source: ImageSource.camera);
      return possiblePhoto?.readAsBytes();
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }
    }
    return null;
  }
}
