import 'package:flutter/material.dart';
import 'package:search_delegte_example/search_delegate/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchDelegateEx());
            },
            icon: const Icon(Icons.search)),
      ),
    );
  }
}
