import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';

abstract class IWidgetsFactory {
  IActivityIndicator createActivityIndicator();

  IAlertDialog createAlertDialog();
}
