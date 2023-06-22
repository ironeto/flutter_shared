export 'package:shared_pk/IGenericOverviewCard.dart';

import 'package:flutter/material.dart';

abstract class IGenericOverviewCard with ChangeNotifier {
  int countItems();
}