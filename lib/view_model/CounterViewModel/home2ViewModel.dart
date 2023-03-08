
import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/app/app.router.dart';
import 'package:flutter_application_1/services/counterServices.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Home2ViewModel extends BaseViewModel{

  final counterServices = locator<CounterServices>();
  
  final _navigationService = locator<NavigationService>();
  
   navigateToHomeE() {
    _navigationService.navigateToHomeE();
  }
  navigateToFavourite() {
    _navigationService.navigateToFavouriteView();
  }

}