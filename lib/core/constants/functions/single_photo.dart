import '../../core.dart';

Future<Uint8List?> selectSinglePhoto(
  BuildContext context,
) async {
  Uint8List? profilePhoto;

  if (Platform.isAndroid) {
  } else if (Platform.isIOS) {
    await showCupertinoModalPopup<Widget>(
      context: context,
      barrierColor: Colors.black38,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () async {
              if (await PhotosServices.askPermission()) {
                profilePhoto = await PhotosServices.selectSinglePhoto();
              }

              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('Library'),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {
              if (await CameraServices.askPermission()) {
                profilePhoto = await CameraServices.selectSinglePhoto();
              }

              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('Camera'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  } else {}
  return profilePhoto;
}
