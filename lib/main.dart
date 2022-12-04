import 'dart:io';

import 'package:abstract_factory/widgets/abstract_widgets/iactivity_indicator.dart';
import 'package:abstract_factory/widgets/abstract_widgets/ialert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'factories/cupertino_widgets_factory.dart';
import 'factories/iwidgets_factory.dart';
import 'factories/material_widgets_factory.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return const MaterialApp(
        home: Example(),
      );
    } else if (Platform.isIOS) {
      return const CupertinoApp(
        home: Example(),
      );
    }
    return Container();
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<IWidgetsFactory> widgetsFactoryList = [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  late IActivityIndicator _activityIndicator;

  late IAlertDialog _alertDialog;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      _activityIndicator = widgetsFactoryList[0].createActivityIndicator();
      _alertDialog = widgetsFactoryList[0].createAlertDialog();
    } else if (Platform.isIOS) {
      _activityIndicator = widgetsFactoryList[1].createActivityIndicator();
      _alertDialog = widgetsFactoryList[1].createAlertDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Scaffold(
        body: ExampleColumn(
          activityIndicator: _activityIndicator.render(),
          alertDialog: _alertDialog.render(context),
        ),
      );
    } else if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: ExampleColumn(
          activityIndicator: _activityIndicator.render(),
          alertDialog: _alertDialog.render(context),
        ),
      );
    }
    return Container();
  }
}

class ExampleColumn extends StatelessWidget {
  final Widget activityIndicator;
  final Widget alertDialog;

  const ExampleColumn(
      {Key? key, required this.activityIndicator, required this.alertDialog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          activityIndicator,
          alertDialog,
        ],
      ),
    );
  }
}
