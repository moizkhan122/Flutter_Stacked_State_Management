
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_model/FavvouriteAppViewModel/FavouriteViewModel.dart';
import 'package:stacked/stacked.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavouriteViewModel>.reactive(
      viewModelBuilder: () => FavouriteViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
        ),
        body: ListView.builder(
          physics:const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 40,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item : $index"),
              trailing: IconButton(
                onPressed: (){
                  if (viewModel.favouriteServise.selectedItem.contains(index)) {
                    viewModel.removeItemValue(index);
                  }else{
                    viewModel.addItem(index);
                  }
                },icon:viewModel.favouriteServise.selectedItem.contains(index) ?const Icon(Icons.favorite) :const Icon(Icons.favorite_border),),
            );
          },)
      ),
    );
  }
}