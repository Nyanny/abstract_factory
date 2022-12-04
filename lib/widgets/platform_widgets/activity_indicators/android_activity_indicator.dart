import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:flutter/material.dart';

class AndroidActivityIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CircularProgressIndicator();
  }
}
