import 'package:get/get.dart';
import 'dart:async';

class TimerController extends GetxController {
  // Observável para controlar o estado do botão
  var isButtonEnabled = false.obs;
  var countdown = 30.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _startCountdown();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void _startCountdown() {
    isButtonEnabled.value = false;
    countdown.value = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown.value > 0) {
        countdown.value--;
      } else {
        isButtonEnabled.value = true;
        timer.cancel();
      }
    });
  }

  void restartCountdown() {
    _startCountdown();
  }
}
