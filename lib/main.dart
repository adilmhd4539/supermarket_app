import 'package:flutter/material.dart';
import 'package:supermarket/core/handlers/db/db_services.dart';

import 'core/handlers/di/service_locator.dart';
import 'feature/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerDb();
  await setupServiceLocator();

  runApp(MyApp());
}
