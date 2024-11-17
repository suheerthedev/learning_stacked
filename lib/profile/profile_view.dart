import 'package:flutter/material.dart';
import 'package:learning_stacked/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: const Text("Profile View")),
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
                  ],
                ),
              ),
            ),
          );
        });
  }
}
