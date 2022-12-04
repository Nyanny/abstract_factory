import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';
import 'package:abstract_factory/widgets/platform_widgets/activity_indicators/ios_activity_indicator.dart';
import 'package:abstract_factory/widgets/platform_widgets/alert_dialogs/ios_alert_dialog.dart';

import 'iwidgets_factory.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return IosActivityIndicator();
  }

  @override
  IAlertDialog createAlertDialog() {
    return IosAlertDialog();
  }
}
