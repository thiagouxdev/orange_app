import 'package:get/get.dart';

class BadgeMallControle extends GetxController {
  var isQttMall = 0.obs;
  var isSelected = true.obs;

  @override
  void onInit() {
    super.onInit();
    ever(isQttMall, (_) {
      update();
    });
  }

  void updateMallQuantity(int newQuantity) {
    isQttMall.value = newQuantity;
    update();
  }

  void toggleSelection() {
    isSelected.value = !isSelected.value;
  }
}
