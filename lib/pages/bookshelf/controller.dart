import 'package:get/get.dart';

class BookshelfController extends GetxController {
  BookshelfController();

  _initData() {
    update(["bookshelf"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
