import 'package:flutter/material.dart';

class ImagePickerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Set backup account'),
      children: [
        Text("Camera"),
        Text("Gallery"),
      ],
    );
  }
}
