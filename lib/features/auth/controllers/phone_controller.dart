import 'package:get/get.dart';

class PhoneController extends GetxController {
  var phoneNumber = "".obs;

  var isButtonEnabled = false.obs;

  void validateInput(String input) {
    phoneNumber.value = input;

    isButtonEnabled.value = phoneNumber.value.isNotEmpty;
  }
}
