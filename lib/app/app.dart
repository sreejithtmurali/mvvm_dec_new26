
import 'package:mvvm_dec/services/databaseService.dart';
import 'package:mvvm_dec/ui/screens/Home/homeview.dart';
import 'package:mvvm_dec/ui/screens/login/loginview.dart';
import 'package:mvvm_dec/ui/screens/splash/splashview.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_services.dart';
import '../services/user_service.dart';



@StackedApp(
  routes: [
    MaterialRoute(page: Splashview, initial: true),
    MaterialRoute(page: Loginview, ),
    MaterialRoute(page: Homeview, ),

  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: Databaseservice),
  ],
)
class AppSetUp {}
