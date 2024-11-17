import 'package:learning_stacked/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  CounterService obj = CounterService();

  int get counter => obj.counter;

  increaseCounter() {
    obj.updateCounter();
    rebuildUi();
  }
}
