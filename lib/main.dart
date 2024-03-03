import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:resposive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const ResponsiveDashBoard();
      }));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Responsive Dashboard',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DashBoardView());
  }
}
