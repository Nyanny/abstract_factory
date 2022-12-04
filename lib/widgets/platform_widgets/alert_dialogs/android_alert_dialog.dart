import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';
import 'package:flutter/material.dart';

class AndroidAlertDialog implements IAlertDialog {
  @override
  Widget render(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Android alertDialog title'),
          content: const Text('Android alertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
