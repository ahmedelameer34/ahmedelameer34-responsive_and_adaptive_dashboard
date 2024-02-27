import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AdaptiveLayout(
          desktopLayout: (context) => const DashBoardDesktopLayout(),
          tabletLayout: (context) => const SizedBox(),
          mobileLayout: (context) => const SizedBox(),
        ),
      ),
    );
  }
}
