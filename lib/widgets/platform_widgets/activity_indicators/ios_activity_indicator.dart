import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:flutter/cupertino.dart';

class IosActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CupertinoActivityIndicator();
  }
}
