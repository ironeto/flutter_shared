import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'IGenericOverviewCard.dart';

export 'package:shared_pk/GenericOverviewCard.dart';

class GenericOverviewCard<T extends IGenericOverviewCard> extends StatelessWidget {
  const GenericOverviewCard({Key? key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<T>(context);
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Total horas",
            style: TextStyle(fontSize: 22.0),
          ),
          Column(
            children: [
              Text(
                "${provider.countItens()}",
                style: TextStyle(fontSize: 22.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
