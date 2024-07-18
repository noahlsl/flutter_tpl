import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class BookshelfPage extends GetView<BookshelfController> {
  const BookshelfPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("BookshelfPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookshelfController>(
      init: BookshelfController(),
      id: "bookshelf",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("bookshelf")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
