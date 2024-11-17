import 'package:flutter/material.dart';
import 'package:learning_stacked/home/home_viewmodel.dart';
import 'package:learning_stacked/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: const Text("Home View")),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${viewModel.counter}",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewModel.increaseCounter();
                        },
                        child: const Text("Increase Counter")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfileView()));
                        },
                        child: const Text("Navigate to Profile"))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
