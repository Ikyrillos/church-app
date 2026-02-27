import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static void showError(String message) {
    toastification.show(
      type: ToastificationType.error,
      style: ToastificationStyle.fillColored,
      alignment: Alignment.topCenter,
      title: Text(message),
      direction: TextDirection.rtl,
      autoCloseDuration: const Duration(seconds: 4),
      showProgressBar: false,
      closeButtonShowType: CloseButtonShowType.onHover,
      dragToClose: true,
    );
  }

  static void showSuccess(String message) {
    toastification.show(
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      alignment: Alignment.topCenter,
      title: Text(message),
      direction: TextDirection.rtl,
      autoCloseDuration: const Duration(seconds: 3),
      showProgressBar: false,
      closeButtonShowType: CloseButtonShowType.onHover,
      dragToClose: true,
    );
  }

  static void showWarning(String message) {
    toastification.show(
      type: ToastificationType.warning,
      style: ToastificationStyle.fillColored,
      alignment: Alignment.topCenter,
      title: Text(message),
      direction: TextDirection.rtl,
      autoCloseDuration: const Duration(seconds: 4),
      showProgressBar: false,
      closeButtonShowType: CloseButtonShowType.onHover,
      dragToClose: true,
    );
  }

  static void showInfo(String message) {
    toastification.show(
      type: ToastificationType.info,
      style: ToastificationStyle.fillColored,
      alignment: Alignment.topCenter,
      title: Text(message),
      direction: TextDirection.rtl,
      autoCloseDuration: const Duration(seconds: 3),
      showProgressBar: false,
      closeButtonShowType: CloseButtonShowType.onHover,
      dragToClose: true,
    );
  }
}

// Backward-compatible alias
typedef ToastM = AppToast;
