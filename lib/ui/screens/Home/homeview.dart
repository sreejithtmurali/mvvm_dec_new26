import 'package:flutter/material.dart';
import 'package:mvvm_dec/models/User.dart';
import 'package:mvvm_dec/ui/screens/Home/homeViewmodel.dart';
import 'package:stacked/stacked.dart';

class Homeview extends StatelessWidget {
  User user;
   Homeview({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(viewModelBuilder: () {
      return HomeViewModel(user);
    },
      builder: (BuildContext context, HomeViewModel viewModel, Widget? child) {
      return Scaffold(
        appBar: AppBar(title: Text("hai ${viewModel.user.name}"),),
      );
      },);
  }
}
