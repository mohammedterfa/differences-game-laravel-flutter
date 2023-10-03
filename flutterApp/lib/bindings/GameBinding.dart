import 'package:game/controllers/GameController.dart';
import 'package:get/get.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameController());
  }
}
