import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import 'package:abosiefienapp/core/widgets/toast_m.dart';

class CustomFunctions {
  bool loaderVisible = false;
  CancelFunc? cancelFunc;

  void showError({required String message, BuildContext? context}) {
    AppToast.showError(message);
  }

  void showSuccess({required String message, BuildContext? context}) {
    AppToast.showSuccess(message);
  }

  void closeKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void showProgress(BuildContext context) {
    closeKeyboard(context);
    cancelFunc?.call();

    cancelFunc = BotToast.showCustomLoading(
      toastBuilder: (context) => const CircularProgressIndicator(
        color: Colors.blue,
        backgroundColor: Colors.black26,
      ),
    );
    loaderVisible = true;
  }

  void hideProgress() {
    cancelFunc?.call();
    loaderVisible = false;
  }

  void closeKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void closeBottomSheet(BuildContext context) {
    Navigator.canPop(context);
  }

  void showToast(String msg, IconData icon, Color color) {
    AppToast.showInfo(msg);
  }
}
