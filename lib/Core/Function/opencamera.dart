 import 'dart:io';

import 'package:image_picker/image_picker.dart';

File? file;
  getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    file = File(photo!.path);
  }
