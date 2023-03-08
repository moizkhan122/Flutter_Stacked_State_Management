

import 'package:flutter_application_1/app/app.locator.dart';
import 'package:flutter_application_1/services/FavouriteService.dart';
import 'package:stacked/stacked.dart';

class FavouriteViewModel extends BaseViewModel{

final favouriteServise = locator<FavouriteService>();

   addItem(int val){
    favouriteServise.addItemValue(val);
    rebuildUi();
  }

   removeItemValue(int val){
    favouriteServise.removeItemValue(val);
    rebuildUi();
  }
}