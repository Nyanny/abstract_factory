import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';
import 'package:flutter/cupertino.dart';

class IosAlertDialog implements IAlertDialog {
  @override
  Widget render(BuildContext context) {
    return CupertinoButton(
      onPressed: () => showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('Ios alertDialog title'),
          content: const Text('Ios alertDialog description'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
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
