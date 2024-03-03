import 'package:flutter/material.dart';
import 'package:resposive_dash_board/utils/size_config.dart';
import 'package:resposive_dash_board/widgets/income_widgets/income_chart.dart';
import 'package:resposive_dash_board/widgets/income_widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1350 || width < 500
        ? const Column(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                height: 10,
              ),
              IncomeDetails(),
            ],
          )
        : const Row(
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
