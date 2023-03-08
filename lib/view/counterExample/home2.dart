import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_model/CounterViewModel/HomeViewModel.dart';
import 'package:flutter_application_1/view_model/CounterViewModel/home2ViewModel.dart';
import 'package:stacked/stacked.dart';


class homeE2 extends StatelessWidget {
  const homeE2({super.key});

  Widget build(BuildContext context) {
    print("build");
    return ViewModelBuilder<Home2ViewModel>.reactive(//for statefull
      viewModelBuilder: () => Home2ViewModel(),//init method like
      //onModelReady: (viewModel)=> viewModel,
      builder: (context, viewModel, child) => Scaffold(
      body: SafeArea(  //Non Reactive is for stateless
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(viewModel.counterServices.counter.toString(),style:const TextStyle(fontSize: 30,color: Colors.black),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: (){
                viewModel.navigateToHomeE();
              }, 
              child: Center(child: Text("Back to HomeE",style: Theme.of(context).textTheme.headline6,),)),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: (){
                viewModel.navigateToFavourite();
              }, 
              child: Center(child: Text("go to FavView",style: Theme.of(context).textTheme.headline6,),)),
          )
          ],
        )
        ),  
      ),    
      ),
    );
  }
}