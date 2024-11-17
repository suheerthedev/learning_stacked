import 'package:learning_stacked/home/home_view.dart';
import 'package:learning_stacked/profile/profile_view.dart';
import 'package:learning_stacked/services/counter_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(
      page: ProfileView,
    ),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterService)
  ],
)
class App {}
