import 'package:flutter/material.dart';
import 'package:resposive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resposive_dash_board/widgets/dash_board_desktop_layout.dart';

import '../utils/size_config.dart';
import '../widgets/all_expenses_widgets/all_expensess_and_quick_invoice.dart';
import '../widgets/drawer_widgets/custom_drawer.dart';
import '../widgets/my_card_and_transactions_history_widgets/my_cards_section.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
        drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? const CustomDrawer()
            : null,
        backgroundColor: const Color(0xffF7F9FA),
        body: AdaptiveLayout(
          desktopLayout: (context) => const DashBoardDesktopLayout(),
          tabletLayout: (context) => const AllExpensessAndQuickInvoiceSection(),
          mobileLayout: (context) => const MyCardsSection(),
        ),
      ),
    );
  }
}
