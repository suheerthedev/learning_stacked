import 'package:learning_stacked/app/app.locator.dart';
import 'package:learning_stacked/app/app.router.dart';
import 'package:learning_stacked/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.updateCounter();
    rebuildUi();
  }

  navigateToProfile() async {
    await navigationService.navigateToProfileView();
  }
}
