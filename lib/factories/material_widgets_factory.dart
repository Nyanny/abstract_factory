import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';
import 'package:abstract_factory/widgets/platform_widgets/activity_indicators/android_activity_indicator.dart';
import 'package:abstract_factory/widgets/platform_widgets/alert_dialogs/android_alert_dialog.dart';

import 'iwidgets_factory.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  @override
  IActivityIndicator createActivityIndicator() {
    return AndroidActivityIndicator();
  }

  @override
  IAlertDialog createAlertDialog() {
    return AndroidAlertDialog();
  }
}
