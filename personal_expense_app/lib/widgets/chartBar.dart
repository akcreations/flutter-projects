import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmt;
  final double percentSpend;
  ChartBar(this.label, this.spendingAmt, this.percentSpend);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(ctx,constraints){
      return Column(
        children: [
          Container(
             height: constraints.maxHeight*0.1,
            child: FittedBox(
              child: Text('\$${spendingAmt.toStringAsFixed(0)}'),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight*0.05,
          ),
          Container(
            height: constraints.maxHeight*0.60,
            width: constraints.maxHeight*0.05,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
                FractionallySizedBox(
                  heightFactor: percentSpend,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight*0.05,
          ),
          Container(child: Text(label),

          height: constraints.maxHeight*0.15,)
        ],
      );

    });

  }
}
