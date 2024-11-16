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
          return Scaffold(
            body: Column(
              children: [
                const Text("Counter Value"),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Increase Counter")),
              ],
            ),
          );
        });
  }
}
