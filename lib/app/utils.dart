

import 'package:mvvm_dec/services/api_services.dart';
import 'package:mvvm_dec/services/databaseService.dart';
import 'package:mvvm_dec/services/user_service.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

NavigationService get navigationService => locator<NavigationService>();
ApiService get apiservice => locator<ApiService>();
Databaseservice get databaseservice => locator<Databaseservice>();
UserService get userservice => locator<UserService>();