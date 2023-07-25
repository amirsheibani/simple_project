import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {

  static storage() async {
    var statusStorage = await Permission.storage.status;
    var statusAccessMediaLocation = await Permission.accessMediaLocation.status;
    var statusManageExternalStorage =
        await Permission.manageExternalStorage.status;
    if (statusStorage != PermissionStatus.granted) {
      await Permission.storage.request();
    }
    if (statusAccessMediaLocation != PermissionStatus.granted) {
      await Permission.accessMediaLocation.request();
    }
    if (statusManageExternalStorage != PermissionStatus.granted) {
      await Permission.manageExternalStorage.request();
    }
  }
}
