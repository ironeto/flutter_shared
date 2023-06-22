import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'IGenericOverviewCard.dart';

class GenericOverviewCard<T extends IGenericOverviewCard>
    extends StatelessWidget {
  final String labelForCounter;

  const GenericOverviewCard({Key? key, required this.labelForCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<T>(context);
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            labelForCounter,
            style: TextStyle(fontSize: 22.0),
          ),
          Column(
            children: [
              Text(
                "${provider.countItems()}",
                style: TextStyle(fontSize: 22.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
