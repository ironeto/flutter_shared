export 'package:shared_pk/IGenericOverviewCard.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class IGenericOverviewCard with ChangeNotifier {
  int countItems();
}