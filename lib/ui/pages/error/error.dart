import 'package:flutter/material.dart';
import 'error_content.dart';

class HYErrorScreen extends StatelessWidget {
  static const String routeName = "/error";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("錯誤"),
      ),
      body: HYErrorContent(),
    );
  }
}
