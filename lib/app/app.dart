import 'package:flutter_application_1/services/FavouriteService.dart';
import 'package:flutter_application_1/services/counterServices.dart';
import 'package:flutter_application_1/view/FavouriteApp/FavouriteView.dart';
import 'package:flutter_application_1/view/counterExample/home.dart';
import 'package:flutter_application_1/view/counterExample/home2.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: homeE, initial: true),
    MaterialRoute(page: homeE2),
    MaterialRoute(page: FavouriteView),
    //MaterialRoute(page: homeE2),
  ],
  dependencies: [
    Singleton(
      classType: NavigationService,
    ),
    LazySingleton(
      classType: CounterServices,
    ),
    LazySingleton(
      classType: FavouriteService,
    ),
  ],
)
class App {}