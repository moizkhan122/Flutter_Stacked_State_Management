import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:flutter_application_1/services/counterServices.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel{

   final counterService = locator<CounterServices>();
    incrementValue(){
      counterService.valueIncrement();
      rebuildUi();
    }
    final _navigationService = locator<NavigationService>();

    navigateToHome2() {
    _navigationService.navigateToHomeE2();
  }
}