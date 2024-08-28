import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;

  void onTapNext(int maxIndex) {
    if (currentIndex < maxIndex - 1) {
      currentIndex++;
      notifyListeners();
    }
  }

  void onTapPrevious() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }
}
