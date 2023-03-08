import 'package:flutter/material.dart';
import 'package:flutter_application_1/view_model/CounterViewModel/HomeViewModel.dart';
import 'package:stacked/stacked.dart';


class homeE extends StatelessWidget {
  const homeE({super.key});

  Widget build(BuildContext context) {
    print("build");
    return ViewModelBuilder<HomeViewModel>.reactive(//for statefull
      viewModelBuilder: () => HomeViewModel(),//init method like
      //onModelReady: (viewModel)=> viewModel,
      builder: (context, viewModel, child) => Scaffold(
      body: SafeArea(  //Non Reactive is for stateless
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(viewModel.counterService.counter.toString(),style:const TextStyle(fontSize: 30,color: Colors.black),),
            SizedBox(height: 20,),
            Text(viewModel.counterService.counter.toString(),style:const TextStyle(fontSize: 30,color: Colors.black),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                onPressed: (){
                  viewModel.navigateToHome2();
                }, 
                child: Center(child: Text("Home2 Screen",style: Theme.of(context).textTheme.headline6,),)),
            )
          ],
        )
        ),  
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          viewModel.incrementValue();
        },
        child:const Icon(Icons.add,size: 25,),
        ),     
      ),
    );
  }
}