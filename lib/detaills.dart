import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    int indexNo = args['id'];

    return Scaffold(
      appBar: AppBar(title: const Text("Product Details")),
      body: Center(child: Text('$indexNo')),
    );
  }
}
