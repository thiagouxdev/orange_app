import 'package:get/get.dart';

class PhoneController extends GetxController {
  // Observável para armazenar o valor do número do telefone
  var phoneNumber = ''.obs;
  // Observável para controlar o estado do botão
  var isButtonEnabled = false.obs;

  void validateInput(String input) {
    // Remove os caracteres não numéricos
    final numericValue = input.replaceAll(RegExp(r'[^\d]'), '');

    // Habilita o botão se o comprimento for exatamente 11 dígitos
    isButtonEnabled.value = numericValue.length == 11;

    // Atualiza o número do telefone
    phoneNumber.value = numericValue;
  }
}
