import 'package:flutter/material.dart';
import 'package:learning_stacked/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return  Scaffold(
            body: Column(
              children: [
                const Text("Counter Value"),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Increase Counter")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Navigate to Profile"))
              ],
            ),
          );
        });
  }
}