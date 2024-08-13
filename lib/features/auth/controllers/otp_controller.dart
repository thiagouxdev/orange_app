import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
  final TextEditingController otpCode = TextEditingController();

  // Observável para armazenar o código OTP
  var otpValue = ''.obs;
  // Observável para controlar o estado do botão
  var isButtonEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Adiciona um listener para o controlador de texto
    otpCode.addListener(_validateOtp);
  }

  @override
  void onClose() {
    otpCode.removeListener(_validateOtp);
    otpCode.dispose();
    super.onClose();
  }

  void _validateOtp() {
    // Remove caracteres não numéricos e atualiza o valor do OTP
    final numericValue = otpCode.text.replaceAll(RegExp(r'[^\d]'), '');
    otpValue.value = numericValue;

    // Habilita o botão se o comprimento for exatamente 6 dígitos
    isButtonEnabled.value = numericValue.length == 6;
  }
}
